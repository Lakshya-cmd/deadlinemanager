import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';



class FilePickerPage extends StatefulWidget {
  @override
  _FilePickerPageState createState() => _FilePickerPageState();
}

class _FilePickerPageState extends State<FilePickerPage> {
  List<File> _pickedFiles = [];

  Future<void> _pickFiles() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: true);

      if (result != null) {
        setState(() {
          _pickedFiles = result.paths.map((path) => File(path!)).toList();
        });
      }
    } catch (e) {
      print('Error picking files: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error picking files')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('File Picker Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: _pickFiles,
              child: Text('Pick Files'),
            ),
            _pickedFiles.isNotEmpty
                ? Expanded(
                    child: ListView.builder(
                      itemCount: _pickedFiles.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(_pickedFiles[index].path.split('/').last),
                        );
                      },
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
