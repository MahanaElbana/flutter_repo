// ignore_for_file: file_names

import '../../model/note.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../../core/widegets.dart';

class HiveScreen extends StatefulWidget {
  const HiveScreen({Key? key}) : super(key: key);

  @override
  State<HiveScreen> createState() => _HiveScreenState();
}

class _HiveScreenState extends State<HiveScreen> {
  String? hiveStringValue;
  Note? note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("hive screen !"),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 8),

            //--- add field to hive box ---//
            CustomButton(
              onPressed: () {
                var myBox = Hive.box("myBox");
                myBox.put("name", "mahney mohsen elbana");
              },
              textString: "Add data to hive",
            ),

            const SizedBox(height: 8),

            //--- to get field from hive box ---//
            CustomButton(
                onPressed: () {
                  var myBox = Hive.box("myBox");
                  setState(
                    () {
                      hiveStringValue = myBox.get("name");
                    },
                  );
                },
                textString: "get data from hive "),
            Padding(
              padding: const EdgeInsets.only(top: 9.0),
              child: Text(hiveStringValue == null
                  ? "name : is not exist"
                  : hiveStringValue.toString()),
            ),
            SizedBox(
              height: 12.0,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 4.0, bottom: 4.0, right: 12.0, left: 12.0),
                child: Divider(
                    color: Theme.of(context).colorScheme.secondary,
                    height: 3.0),
              ),
            ),
            //----------------- part 2 -------------------//
            CustomButton(
                onPressed: () {
                  var myBox = Hive.box<Note>("noteBox");
                  myBox.add(Note(
                      content: "mahney elbana think in object",
                      description: "title"));
                },
                textString: "add Note Object to hive "),

            CustomButton(
                onPressed: () {
                  var myBox = Hive.box<Note>("noteBox");
                  setState(
                    () {
                      note = myBox.getAt(0);
                    },
                  );
                },
                textString: "get Note Object from hive "),

            Padding(
              padding: const EdgeInsets.only(top: 9.0),
              child:
                  Text(note == null ? "note object" : note!.content.toString()),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 9.0),
              child: Text(
                  note == null ? "note object" : note!.description.toString()),
            ),
          ],
        ),
      ),
    );
  }
}
