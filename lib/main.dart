import 'dart:io';

import 'package:chat_flutter_app/app/chat.dart';
import 'package:chat_flutter_app/model/note.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

//-- hive in flutter
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
void main() async {
  //----------------------//
  WidgetsFlutterBinding.ensureInitialized() ;
  Directory dir = await getApplicationDocumentsDirectory() ;
  await Hive.initFlutter(dir.path);
  
  // Register Adapter
  Hive.registerAdapter(NoteAdapter()); 
  Hive.openBox<Note>("noteBox");

  Hive.openBox("myBox");
  //----------------------//
  await GetStorage.init();

  runApp(
    ChatApp(),
  );
}
