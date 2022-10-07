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
      // body: Center(
      //   child: Column(
      //     children: [
      // Image.network(
      //     'https://media.gettyimages.com/photos/modern-laptop-with-empty-screen-on-white-background-mockup-design-picture-id1182241805'),
      //       SizedBox(),
      //       TextButton(
      //         onPressed: () {},
      //         child: Text('Gallery'),
      //       ),
      //       TextButton(
      //           onPressed: () {
      //             getImage();
      //           },
      //           child: const Text('OpenCam'))
      //     ],
      //   ),
      // ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(227, 208, 224, 187),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(120),
                              bottomRight: Radius.circular(120))),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0, left: 16),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 42,
                            child: Icon(Icons.person),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30.0, left: 16),
                                child: Text(
                                  "Hi... Aslam",
                                  style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10, top: 17, bottom: 12),
                      child: Stack(
                        children: [
                          Container(
                            height: 180,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                                child: Text(
                                    'Cardea Health Care Solutions')), //book advertaisment
                          ),
                          Positioned(
                            top: 9,
                            left: 1,
                            child: Container(
                              height: 160,
                              width: 8,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Card(
                            elevation: 0,
                            child: Container(
                              height: 190,
                              width: 170,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: IconButton(
                                icon: Icon(
                                  Icons.camera,
                                  size: 120,
                                ),
                                onPressed: () {
                                  getImage();
                                },
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Card(
                            elevation: 0,
                            child: Container(
                              height: 190,
                              width: 170,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Image.network(
                                'https://media.gettyimages.com/photos/modern-laptop-with-empty-screen-on-white-background-mockup-design-picture-id1182241805',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Card(
                            elevation: 0,
                            child: Container(
                              height: 190,
                              width: 170,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Card(
                            elevation: 0,
                            child: Container(
                              height: 190,
                              width: 170,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Card(
                            elevation: 0,
                            child: Container(
                              height: 190,
                              width: 170,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Card(
                            elevation: 0,
                            child: Container(
                              height: 190,
                              width: 170,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
