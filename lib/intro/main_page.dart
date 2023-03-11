import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uninterested/intro/slider_page.dart';
import 'package:uninterested/utilities/AppColor.dart';
import 'package:uninterested/utilities/AppColorStyle.dart';
// import 'package:zopnote_consumer/ui/home/intro_screen/slider_page.dart';
// import 'package:zopnote_consumer/ui/login/log_in.dart';

class Landing extends StatefulWidget {
  static String route = '/landing Screen';
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    SliderPage(
        title: "On - Demand Delivery",
        description: "We turn your orders on demand and deliver it on time",
        image: "assets/Creative thinking.svg"),
    SliderPage(
        title: "Buy crafts online",
        description:
            "Shop crafts online at shop and look app as you normally do",
        image: "assets/Design community.svg"),
    SliderPage(
        title: "Fast delivery",
        description: "And we’ll bring straight to your door in few days",
        image: "assets/In no time.svg"),
  ];

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: _onchanged,
            controller: _controller,
            itemCount: _pages.length,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          SafeArea(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, right: 11),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      (_currentPage != (_pages.length - 1))
                          ? InkWell(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => const LogInScreen()),
                                // );
                              },
                              child: Text(
                                'Skip',
                                style: AppTextStyle.sfpro(
                                  fontSize: 16,
                                  color: AppColorPallet.zop_map_text,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          : Text("")
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 100.0,right: 11,left: 11),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 40),
                            child: AnimatedSmoothIndicator(
                              activeIndex: _currentPage,
                              count: _pages.length,
                              effect: SlideEffect(
                                radius: 3,
                                spacing: 0,
                                dotHeight: 4.94,
                                dotWidth: 84,
                                activeDotColor: AppColorPallet.pink,
                                dotColor: AppColorPallet.listtilegrey,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: InkWell(
                              onTap: () {
                                _controller.nextPage(
                                    duration: Duration(milliseconds: 800),
                                    curve: Curves.easeInOutQuint);
                              },
                              child: AnimatedContainer(
                                alignment: Alignment.center,
                                duration: Duration(milliseconds: 300),
                                height: 32,
                                width: (_currentPage == (_pages.length - 1))
                                    ? 150
                                    : 32,
                                child: (_currentPage == (_pages.length - 1))
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              _controller.nextPage(
                                                  duration: Duration(
                                                      milliseconds: 300),
                                                  curve: Curves.easeInOutQuint);
                                              setState(() {
                                                _currentPage += 1;
                                              });
                                              Get.toNamed('/LogInScreen');
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 8),
                                              child: Text(
                                                "Get Started",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            child: SvgPicture.asset(
                                                "assets/next.svg"),
                                            onTap: () {
                                              Get.toNamed('/LogInScreen');
                                            },
                                          ),
                                        ],
                                      )
                                    : SvgPicture.asset("assets/next.svg"),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
