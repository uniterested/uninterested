import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uninterested/utilities/AppColor.dart';
import 'package:uninterested/utilities/AppColorStyle.dart';
import 'package:uninterested/utilities/AppIcons.dart';
import 'package:uninterested/utilities/appcardcontainer.dart';
import 'package:uninterested/utilities/bottom_nav.dart';

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
  List Stors1 = [
  {
    "image": "assets/1.jpg",
    "name": "Fresh Curd",
    "rs": "\$30.00",
    "rate": "5.3"
  },
  {
    "image": "assets/2.jpg",
    "name": "Fresh Yourt",
    "rs": "\$25.00",
    "rate": "4.1"
  },
  {"image": "assets/3.jpg", "name": "Paneer", "rs": "\$73.00", "rate": "7.6"},
  {
    "image": "assets/4.jpg",
    "name": "Thumps Up Soft Drinks",
    "rs": "\$36.00",
    "rate": "5.9"
  },
  {
    "image": "assets/5.jpg",
    "name": "Fresh Milk",
    "rs": "\$55.00",
    "rate": "8.1"
  },
];



  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          drawer: Ldrawer(),
          backgroundColor: AppColorPallet.bgblue,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SafeArea(
              child: Column(children: [
                Stack(
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
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
                                    height: 34,
                                    width: 34,
                                    decoration: BoxDecoration(
                                        color: AppColorPallet.white.withOpacity(.4),
                                        borderRadius: BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(9.0),
                                      child: SvgPicture.asset(
                                        AppLeadingIcons.menuIcon,
                                        
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
                                      height: 34,
                                      width: 34,
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
                                      height: 34,
                                      width: 34,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: AppColorPallet.white.withOpacity(.4)),
                                      child: IconButton(
                                        icon: Image.asset(AppLeadingIcons.Notification),
                                        // iconSize: 26,
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
                                const EdgeInsets.only(left: 19, top: 20),
                            child: Text(
                              'Hi, Muhammed !',
                              style: AppTextStyle.sfpro(
                                  fontSize: 32, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16.0, right: 16, top: 20, bottom: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppColorPallet.white.withOpacity(.6),
                                borderRadius: BorderRadius.circular(18)),
                            height: 44,
                            width: MediaQuery.of(context).size.width,
                            child: TextField(
                              decoration: InputDecoration(
                                  enabled: false,
                                  suffixIcon: Image.asset(AppLeadingIcons.Search),
                                  labelText: 'Search in here',
                                  labelStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 20)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(),
                          child: Column(children: [
                            CarouselSlider.builder(
                              itemCount: Stors1.length,
                              itemBuilder: (context, index, realIndex) {
                                return Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Image.asset(
                                          Stors1[index]["image"],
                                          fit: BoxFit.fill,
                                        ),
                                      )),
                                );
                              },
                              options: CarouselOptions(
                                
                                  disableCenter: false,
                                  viewportFraction: 1,
                                  height: 127,
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
        ),
      BottomNavigation()],
    );
  }

  buildIndicator() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: AnimatedSmoothIndicator(
        
        activeIndex: activeindex,
        count: Stors1.length,
        effect: const SlideEffect(
          spacing: 3,
          dotHeight: 7,
          dotWidth: 7,
          activeDotColor:AppColorPallet.orange3,
          dotColor: AppColorPallet.white,
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
        SizedBox(width: 327,
          height: 846,
          child: Drawer(
            
            backgroundColor:AppColorPallet.orange3,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60, right: 297),
                  child: SvgPicture.asset(AppLeadingIcons.back)
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
                          leading: SvgPicture.asset(AppLeadingIcons.plan),
                          
                          title: Text(
                            "Your Orders",
                            style: AppTextStyle.sfpro(fontSize: 14,
                            fontWeight: FontWeight.w400),
                          ),
                          onTap: () {},
                          minLeadingWidth: 1,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: ListTile(
                          leading: SvgPicture.asset(AppLeadingIcons.profile_icon),
                         
                          title: Text(
                            "My Profile",
                            style: AppTextStyle.sfpro(fontSize: 14,
                            fontWeight: FontWeight.w400),
                          ),
                          minLeadingWidth: 1,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: ListTile(
                          leading: SvgPicture.asset(AppLeadingIcons.Payment),
                         
                          title: Text(
                            "Payment History",
                            style: AppTextStyle.sfpro(fontSize: 14,
                            fontWeight: FontWeight.w400),
                          ),
                          minLeadingWidth: 1,
                        ),
                      ),
                      ListTile(
                        leading: SvgPicture.asset(AppLeadingIcons.about),
                        
                        title: Text(
                          "About Us",
                          style: AppTextStyle.sfpro(fontSize: 14,
                            fontWeight: FontWeight.w400),
                        ),
                        minLeadingWidth: 1,
                      )
                    ],
                  ),
                ),
                // Icon(
                //   Icons.power_settings_new,
                //   color: Colors.white,
                //   size: 20,
                //   shadows: [
                //     Shadow(
                //         color: Colors.black26,
                //         offset: Offset(1, 2),
                //         blurRadius: 5),
                //   ],
                // ),
                SvgPicture.asset(AppLeadingIcons.log_out),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Log Out",
                  style: TextStyle(color: AppColorPallet.white,
                   fontSize: 20,
                   fontWeight: FontWeight.w400, shadows: [
                    Shadow(
                        color: Colors.black26,
                        offset: Offset(-1, 3),
                        blurRadius: 5),
                  ]),
                ),
                SizedBox(
                  height: 85,
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 265, top: 71),
          child: CircleAvatar(
            backgroundColor: AppColorPallet.orange3,
            radius: 49,
            child: Material(
              borderRadius: BorderRadius.circular(38),
              elevation: 4,
              child: CircleAvatar(
                radius: 38,
                backgroundImage: AssetImage("assets/1.jpg"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
