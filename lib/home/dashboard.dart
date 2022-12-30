import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uninterested/home/stor.dart';
import 'package:uninterested/utilities/AppColor.dart';
import 'package:uninterested/utilities/AppColorStyle.dart';
import 'package:uninterested/utilities/AppIcons.dart';
import 'package:uninterested/utilities/appcardcontainer.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  Color colorOne = Colors.red;
  Color colorTwo = Colors.red;
  Color colorThree = Colors.black45;

  final appTheme = ThemeData(
    primarySwatch: Colors.red,
  );
  int currentindex = 0;
  int activeindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Ldrawer(),
      backgroundColor: Colors.blue.shade100,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(children: [
            Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10.0, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Builder(
                            builder: (context) => InkWell(
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(9.0),
                                  child: Image.asset(
                                    AppLeadingIcons.menu,
                                  ),
                                ),
                              ),
                              onTap: () {
                                Scaffold.of(context).openDrawer();
                              },
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.cyanAccent),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'assets/5.jpg',
                                      fit: BoxFit.fill,
                                      height: 20,
                                    ),
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: IconButton(
                                    icon: Icon(Icons.notifications_none),
                                    iconSize: 26,
                                    onPressed: () {},
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 80,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(right: 16, left: 19, top: 20),
                        child: Row(
                          children: [
                            Text(
                              'Hi, ',
                              style: AppTextStyle.sfpro(
                                  fontSize: 32, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              'Aslam!',
                              style: AppTextStyle.sfpro(
                                  fontSize: 32, fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, right: 16, top: 20, bottom: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColorPallet.white,
                            borderRadius: BorderRadius.circular(16)),
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: TextField(
                          decoration: InputDecoration(
                              enabled: false,
                              suffixIcon: Icon(Icons.search),
                              labelText: 'Search in here',
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 20)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Column(children: [
                        CarouselSlider.builder(
                          itemCount: Stors1.length,
                          itemBuilder: (context, index, realIndex) {
                            return Padding(
                              padding: const EdgeInsets.all(16),
                              child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Image.asset(
                                    Stors1[index]["image"],
                                    fit: BoxFit.fill,
                                  )),
                            );
                          },
                          options: CarouselOptions(
                              disableCenter: false,
                              viewportFraction: 1,
                              height: 180,
                              autoPlay: true,
                              autoPlayInterval: Duration(seconds: 5),
                              aspectRatio: 16 / 9,
                              enlargeCenterPage: true,
                              onPageChanged: ((index, reason) {
                                setState(() {
                                  activeindex = index;
                                });
                              })),
                        ),
                        buildIndicator()
                      ]),
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: Stors1.length,
                      // ignore: prefer_const_constructors
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 1,
                        mainAxisSpacing: 10,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Container(
                              child: Center(
                            child: AppCardContainer(
                              child: Container(
                                width: 182.0,
                                height: 400,
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 24.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 400,
                                          child: Image.asset(
                                            Stors1[index]["image"],
                                            fit: BoxFit.fill,
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              color: Colors.pink[100]),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0.0,
                                      left: 0.0,
                                      child: Container(
                                        color: Colors.red,
                                        child: CustomPaint(
                                          painter: CustomContainerShapeBorder(
                                            height: 70.0,
                                            width: 182,
                                            radius: 50.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 90,
                                      right: 7,
                                      child: CircleAvatar(
                                        radius: 16,
                                        backgroundColor: Colors.red,
                                        child: Icon(
                                          Icons.heart_broken_sharp,
                                          size: 18,
                                          color: AppColorPallet.white,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      child: Container(
                                        height: 70.0,
                                        width: 186.0,
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
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          Stors1[index]['rs'],
                                                          style: AppTextStyle
                                                              .sfpro(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right: 8,
                                                                  bottom: 10),
                                                          child: CircleAvatar(
                                                            backgroundColor:
                                                                Colors.black,
                                                            radius: 12,
                                                            child: Icon(
                                                              Icons.add,
                                                              color:
                                                                  Colors.white,
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
                      },
                    )
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }

  buildIndicator() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: AnimatedSmoothIndicator(
        activeIndex: activeindex,
        count: Stors1.length,
        effect: ExpandingDotsEffect(
          dotHeight: 10,
          dotWidth: 10,
          activeDotColor: Colors.black,
          dotColor: Colors.black12,
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

class CurvePainter extends CustomPainter {
  Color colorOne = Colors.blue.shade100;
  Color colorTwo = Colors.blue.shade200;
  Color colorThree = Colors.blue.shade300;

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();

    path.lineTo(0, size.height * 1);
    path.quadraticBezierTo(size.width * 0.10, size.height * 0.70,
        size.width * 0.17, size.height * 0.90);
    path.quadraticBezierTo(
        size.width * 0.20, size.height, size.width * 0.25, size.height * 0.90);
    path.quadraticBezierTo(size.width * 0.40, size.height * 0.40,
        size.width * 0.50, size.height * 0.70);
    path.quadraticBezierTo(size.width * 0.60, size.height * 0.85,
        size.width * 0.65, size.height * 0.65);
    path.quadraticBezierTo(
        size.width * 0.70, size.height * 0.90, size.width, 0);
    path.close();

    paint.color = colorThree;
    canvas.drawPath(path, paint);

    path = Path();
    path.lineTo(0, size.height * 0.50);
    path.quadraticBezierTo(size.width * 0.10, size.height * 0.80,
        size.width * 0.15, size.height * 0.60);
    path.quadraticBezierTo(size.width * 0.20, size.height * 0.45,
        size.width * 0.27, size.height * 0.60);
    path.quadraticBezierTo(
        size.width * 0.45, size.height, size.width * 0.50, size.height * 0.80);
    path.quadraticBezierTo(size.width * 0.55, size.height * 0.45,
        size.width * 0.75, size.height * 0.75);
    path.quadraticBezierTo(
        size.width * 0.85, size.height * 0.93, size.width, size.height * 0.60);
    path.lineTo(size.width, 0.9);
    path.close();

    paint.color = colorTwo;
    canvas.drawPath(path, paint);

    path = Path();
    path.lineTo(0, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.10, size.height * 0.55,
        size.width * 0.22, size.height * 0.70);
    path.quadraticBezierTo(size.width * 0.30, size.height * 0.90,
        size.width * 0.40, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.52, size.height * 0.50,
        size.width * 0.65, size.height * 0.70);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.85, size.width, size.height * 0.60);
    path.lineTo(size.width, 0);
    path.close();

    paint.color = colorOne;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}

class Ldrawer extends StatelessWidget {
  const Ldrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Drawer(
          backgroundColor: Colors.deepOrangeAccent[100],
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 240),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 30,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Expanded(
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 50,
                        child: ListTile(
                          leading: Icon(Icons.shopping_bag_outlined),
                          iconColor: Colors.black,
                          title: Text(
                            "Your Orders",
                            style: TextStyle(fontSize: 12),
                          ),
                          onTap: () {},
                          minLeadingWidth: 1,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: ListTile(
                          leading: Icon(Icons.person_outlined),
                          iconColor: Colors.black,
                          title: Text(
                            "My Profile",
                            style: TextStyle(fontSize: 12),
                          ),
                          minLeadingWidth: 1,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: ListTile(
                          leading: Icon(Icons.keyboard),
                          iconColor: Colors.black,
                          title: Text(
                            "Payment History",
                            style: TextStyle(fontSize: 12),
                          ),
                          minLeadingWidth: 1,
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.headset_mic_rounded),
                        iconColor: Colors.black,
                        title: Text(
                          "About Us",
                          style: TextStyle(fontSize: 12),
                        ),
                        minLeadingWidth: 1,
                      )
                    ],
                  ),
                ),
                Icon(
                  Icons.power_settings_new,
                  color: Colors.white,
                  size: 20,
                  shadows: [
                    Shadow(
                        color: Colors.black26,
                        offset: Offset(1, 2),
                        blurRadius: 5),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Log Out",
                  style: TextStyle(color: Colors.white, fontSize: 16, shadows: [
                    Shadow(
                        color: Colors.black26,
                        offset: Offset(-1, 3),
                        blurRadius: 5),
                  ]),
                ),
                SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 255, top: 65),
          child: CircleAvatar(
            backgroundColor: Colors.deepOrangeAccent[100],
            radius: 40,
            child: Material(
              borderRadius: BorderRadius.circular(30),
              elevation: 4,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/1.jpg"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
