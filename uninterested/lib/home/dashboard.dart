import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uninterested/home/stor.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
            child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 32.0, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'images/menu.png',
                  height: 30,
                  width: 30,
                ),
                CircleAvatar(
                  child: Text('AS'),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 160,
              color: Colors.black12,
            ),
          ),
          Container(
            height: 1000,
            child: GridView.builder(
              itemCount: Stors1.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: .0,
                  mainAxisSpacing: 7.0),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 120,
                  child: Card(
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, bottom: 8, right: 16, left: 16),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Container(
                                  height: 110,
                                  width: 110,
                                  child: Image.asset(
                                    Stors1[index]["image"],
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(Stors1[index]['name']),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(Stors1[index]['rs']),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                      ),
                                      Text(Stors1[index]['rate'])
                                    ],
                                  ),
                                )
                              ],
                            )
                          ]),
                    ),
                  ),
                );
              },
            ),
          ),
        ])),
      ),
    );
  }
}
