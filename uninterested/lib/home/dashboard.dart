import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  File? _image;
  Future getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) return;
    final imageTemporary = File(image.path);
    setState(() {
      _image = imageTemporary;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unintrested'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
                'https://media.gettyimages.com/photos/modern-laptop-with-empty-screen-on-white-background-mockup-design-picture-id1182241805'),
            SizedBox(),
            TextButton(
              onPressed: () {},
              child: Text('Gallery'),
            ),
            TextButton(
                onPressed: () {
                  getImage();
                },
                child: const Text('OpenCam'))
          ],
        ),
      ),
    );
  }
}
