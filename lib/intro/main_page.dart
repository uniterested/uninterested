import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
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
      title: "On - Demand Dlivery",
        description:
            "We turn your orders on demand and deliver it on time",
        image: "assets/Creative_thinking.svg"),
    SliderPage(
      title: "Buy crafts online",
        description: "Shop crafts online at shop and look app as you normally do",
        image: "assets/design_community.svg"),
    SliderPage(
      title: "Fast delivery",
        description:
            "And we’ll bring straight to your door in few days",
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
                  padding: const EdgeInsets.only(top: 44.0, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
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
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 84.0, left: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: List<Widget>.generate(_pages.length,
                                (int index) {
                              return AnimatedContainer(
                                  duration: Duration(milliseconds: 300),
                                  height: 10,
                                  width: (index == _currentPage) ? 30 : 10,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 30),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: (index == _currentPage)
                                          ? AppColorPallet.pink
                                          : Colors.pink.withOpacity(0.5)));
                            })),
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
                            height: 70,
                            width: (_currentPage == (_pages.length - 1))
                                ? 200
                                : 75,
                            decoration: BoxDecoration(
                                // color: Colors.blue,
                                borderRadius: BorderRadius.circular(0)),
                            child: (_currentPage == (_pages.length - 1))
                                ? Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          _controller.nextPage(
                                              duration:
                                                  Duration(milliseconds: 300),
                                              curve: Curves.easeInOutQuint);
                                          setState(() {
                                            _currentPage += 1;
                                          });
                                          Get.toNamed('/LogInScreen');
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(
                                          //       builder: (context) =>
                                          //           const LogInScreen()),
                                          // );
                                        },
                                        child: Text(
                                          "Get Started",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        child: SvgPicture.asset(
                                          "assets/next.svg"
                                        ),
                                        
                                        onTap: () {
                                          Get.toNamed('/LogInScreen');
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(
                                          //       builder: (context) =>
                                          //           const LogInScreen()),
                                          // );
                                        },
                                      ),
                                    ],
                                  )
                                 :  SvgPicture.asset(
                                          "assets/next.svg"
                                        ),
                                //  Icon(
                                //     Icons.navigate_next,
                                //     size: 50,
                                //     color: Colors.black,
                                //   ),
                          ),
                        ),
                      ),
                    ],
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
