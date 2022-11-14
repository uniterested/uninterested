import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uninterested/home/stor.dart';
import 'package:uninterested/utilities/AppColorStyle.dart';
import 'package:uninterested/utilities/AppIcons.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent[100],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 32.0, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(AppLeadingIcons.menu)
                  // CircleAvatar(
                  //   child: Text('AS'),
                  // )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Container(
                height: 160,
                color: Colors.black12,
              ),
            ),
            Container(
                child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: Stors1.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2.0,
                  mainAxisSpacing: 3.0),
              itemBuilder: (BuildContext context, int index) {
                return
                    // Container(
                    //   width: 120,
                    //   child: Card(
                    //     elevation: 2,
                    //     child: Padding(
                    //       padding: const EdgeInsets.only(
                    //           top: 8.0, bottom: 8, right: 16, left: 16),
                    //       child: Column(
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           children: [
                    //             Center(
                    //               child: Container(
                    //                   height: 110,
                    //                   width: 110,
                    //                   child:
                    // Image.asset(
                    //                     Stors1[index]["image"],
                    //                     fit: BoxFit.cover,
                    //                   )),
                    //             ),
                    //             SizedBox(
                    //               height: 10,
                    //             ),
                    //         Text(Stors1[index]['name']),
                    //         Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           children: [
                    //             Text(Stors1[index]['rs']),
                    //             Padding(
                    //               padding: const EdgeInsets.only(top: 8.0),
                    //               child: Row(
                    //                 children: [
                    //                   Icon(
                    //                     Icons.star,
                    //                     size: 16,
                    //                   ),
                    //                   Text(Stors1[index]['rate'])
                    //                 ],
                    //               ),
                    //             )
                    //           ],
                    //         )
                    //       ]),
                    // ),
                    //   ),
                    // );
                    ///

                    Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Container(
                      color: Colors.black,
                      child: Center(
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                          // elevation: 10.0,
                          child: Container(
                            width: 165.0,
                            height: 300.0,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 24.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 300,
                                      child: Image.asset(
                                        Stors1[index]["image"],
                                        fit: BoxFit.fill,
                                      ),
                                      // child: ,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          color: Colors.pink[100]),
                                    ),
                                  ),
                                ),
                                // This is the Custom Shape Container
                                Positioned(
                                  bottom: 0.0,
                                  left: 0.0,
                                  child: Container(
                                    color: Colors.red,
                                    child: CustomPaint(
                                      painter: CustomContainerShapeBorder(
                                        height: 70.0,
                                        width: 166,
                                        radius: 50.0,
                                      ),
                                    ),
                                  ),
                                ),
                                // This Holds the Widgets Inside the the custom Container;
                                Positioned(
                                  bottom: 0,
                                  child: Container(
                                    height: 70.0,
                                    width: 176.0,
                                    // color: Colors.grey.withOpacity(0.6),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 24.0, top: 17, right: 8),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  Stors1[index]['name'],
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: AppTextStyle.sfpro(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                // SizedBox(
                                                //   height: 10,
                                                // ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      Stors1[index]['rs'],
                                                      style: AppTextStyle.sfpro(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 8,
                                                              bottom: 10),
                                                      child: CircleAvatar(
                                                        backgroundColor:
                                                            Colors.black,
                                                        radius: 12,
                                                        child: Icon(
                                                          Icons.add,
                                                          color: Colors.white,
                                                          size: 14,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
                );
                //  } ],
                //           ),
              },
            ))
          ]
              // ]),

              ),
        ),
      ),
    );
  }
}

class CustomContainerShapeBorder extends CustomPainter {
  final double height;
  final double width;
  final Color fillColor;
  final double radius;

  CustomContainerShapeBorder({
    this.height: 280,
    this.width: 300.0,
    this.fillColor: Colors.white,
    this.radius: 12.0,
  });
  @override
  void paint(Canvas canvas, Size size) {
    Path path = new Path();
    path.moveTo(0.0, -radius);
    path.lineTo(0.0, -(height - radius));
    path.conicTo(0.0, -height, radius, -height, 1);
    path.lineTo(width - radius, -height);
    path.conicTo(width, -height, width, -(height + radius), 2);
    path.lineTo(width, -(height - radius));
    path.lineTo(width, -radius);

    path.conicTo(width, 0.0, width - radius, 0.0, 9);
    path.lineTo(radius, 0.0);
    path.conicTo(0.0, 0.0, 0.0, -radius, 9);
    path.close();
    canvas.drawPath(path, Paint()..color = fillColor);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
