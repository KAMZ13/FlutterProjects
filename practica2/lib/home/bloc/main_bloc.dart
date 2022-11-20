import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';
import 'package:http/http.dart' as http;

part 'main_event.dart';
part 'main_state.dart';


class MainBloc extends Bloc<MainEvent, MainState> {
  MainState get initialState => MainInitial();

  MainBloc() : super(MainInitial()) {
    on<MainEvent>(_searchSong);
  }

  void _searchSong(MainEvent event, Emitter emit) async {
    final tmpPath = await _obtainTempPath();
    final filePath = await doRecording(tmpPath, emit);
    print("File path: $filePath");
    File file = File(filePath!);
    String fileString = await fileConvert(file);
    var json = await _recieveResponse(fileString);

    if (json == null || json["result"] == null) {
      emit(MainErrorState());
    } else {
      try {
        final String song = json['result']['title'];
        final String artist = json['result']['artist'];
        final String album = json['result']['album'];
        final String date = json['result']['release_date'];
        final String apple = json['result']['apple_music']['url'];
        final String spotify =
            json['result']['spotify']['external_urls']['spotify'];
        final String image =
            json['result']['spotify']['album']['images'][0]['url'];
        final String link = json['result']['song_link'];

        emit(MainSuccessState(
          song: song,
          artist: artist,
          album: album,
          date: date,
          apple: apple,
          spotify: spotify,
          image: image,
          link: link,
        ));
      } catch (e) {
        print("Error: $e");
        emit(MainMissingValuesState());
      }
    }
  }

  Future<String?> doRecording(String tmpPath, Emitter<dynamic> emit) async {
    final Record _record = Record();
    try {
      bool permission = await _record.hasPermission();
      print("Permission: $permission");
      if (permission) {
        emit(MainListeningState());
        await _record.start(
          path: '${tmpPath}/test.m4a',
          encoder: AudioEncoder.AAC,
          bitRate: 128000,
          samplingRate: 44100,
        );
        await Future.delayed(Duration(seconds: 7));
        return await _record.stop();
      } else {
        emit(MainErrorState());
        print("Permission denied");
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<String> _obtainTempPath() async {
    Directory tempDir = await getTemporaryDirectory();
    return tempDir.path;
  }

  Future _recieveResponse(String file) async {
    emit(MainFinishedState());
    print("Enviando a la API");
    http.Response response = await http.post(
      Uri.parse('https://api.audd.io/'),
      headers: {'Content-Type': 'multipart/form-data'},
      body: jsonEncode(
        <String, dynamic>{
          'api_token': dotenv.env['key'],
          'return': 'apple_music,spotify',
          'audio': file,
          'method': 'recognize',
        },
      ),
    );
    if (response.statusCode == 200) {
      print("Success");
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load json');
    }
  }
}

Future<String> fileConvert(File file) async {
  List<int> fileBytes = await file.readAsBytes();
  String base64String = base64Encode(fileBytes);
  return base64String;
}
