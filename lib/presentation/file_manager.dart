import 'dart:io';

import 'package:costazandroid/presentation/setup_schedule_screen/controller/setup_schedule_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_file_dialog/flutter_file_dialog.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';

class FilesScreen extends StatefulWidget {
  @override
  _FilesScreenState createState() => _FilesScreenState();
}

class _FilesScreenState extends State<FilesScreen> {
  final SetupScheduleController firstController = Get.find();

  Future<void> _createFolder(String folderName) async {
    final directory = await getExternalStorageDirectory();
    final folder = await Directory('${directory!.path}/$folderName').create(recursive: true);
    print('Folder created at: ${folder.path}');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('File Manager'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: firstController.classes.value.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.folder),
            title: Text(firstController.classes.value[index].classname!),
            subtitle: Text('0 files'),
            trailing: Icon(Icons.more_vert),
            onTap: () async {
              final directory = await getExternalStorageDirectory();
              await _createFolder(firstController.classes.value[index].classname!,);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          final directory = await FlutterFileDialog.pickFile();
          if (directory != null) {
            final folderName = "New Folder";
            await _createFolder(folderName,);
          }
        },
      ),
    );
  }
}
