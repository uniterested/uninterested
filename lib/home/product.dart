import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uninterested/utilities/AppColor.dart';
import 'package:uninterested/utilities/AppColorStyle.dart';
import 'package:uninterested/utilities/AppIcons.dart';
import '../utilities/button.dart';

class Productscrn extends StatefulWidget {
  const Productscrn({Key? key}) : super(key: key);

  @override
  State<Productscrn> createState() => _ProductscrnState();
}

class _ProductscrnState extends State<Productscrn> {
  var activeindex = 0;
  List image = ["assets/macrome.jpg", "assets/1.jpg", "assets/macrome.jpg"];
  final controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange[50],
        body: Stack(
          children: [
            Column(
              children: [
                CarouselSlider.builder(
                  carouselController: controller,
                  itemCount: image.length,
                  itemBuilder: (context, index, realIndex) {
                    return Image.asset(
                      image[index],
                      fit: BoxFit.fill,
                    );
                  },
                  options: CarouselOptions(
                      viewportFraction: 1,
                      height: 623,
                      onPageChanged: ((index, reason) {
                        setState(() {
                          activeindex = index;
                        });
                      })),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 120.0, left: 16, right: 16),
              child: Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: prev,
                      child: SvgPicture.asset(AppLeadingIcons.backbtn),
                    ),
                    GestureDetector(
                      onTap: next,
                      child: SvgPicture.asset(
                        AppLeadingIcons.forwardbtn,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24, left: 16, right: 16),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(37),
                    color: AppColorPallet.orange.withOpacity(.6),
                  ),
                  height: 378,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                            top: 26, left: 18, right: 10, bottom: 15),
                        child: SizedBox(
                          width: 328,
                          child: Text(
                            "LETHER HAND MAID POASAS AJJGGKGG BFDKDFHDFNFND",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 31, right: 19, bottom: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 64,
                              height: 17,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.deepOrange.withOpacity(.45)),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "In Stock",
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 13),
                                  )),
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  width: 72,
                                  child: Text(
                                    "506 Review",
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 16,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 33, right: 19, bottom: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sceant",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    width: 72,
                                    child: Text("Scanted",
                                        style: TextStyle(
                                          fontSize: 13,
                                        )),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Health Facts",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    width: 72,
                                    child: Text(
                                      "vitamin b5, hyaluronic acid, peptides,",
                                      style: TextStyle(
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 47),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Product From",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    width: 72,
                                    child: Text(
                                      "Cream",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\u{20B9} 2000',
                                  style: AppTextStyle.sfpro(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 28),
                                  child: SizedBox(
                                    height: 48,
                                    width: 211,
                                    child: AppTextFittedElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          "ADD TO CART",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700),
                                        )),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 420,
              left: 70,
              child: Center(
                child: Align(
                  alignment: Alignment.center,
                  child: carouselIndicator(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18, top: 60, left: 18),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(AppLeadingIcons.back),
                      SvgPicture.asset(AppLeadingIcons.share),
                    ],
                  )),
            ),
          ],
        ),
        // Padding(
        //     padding: const EdgeInsets.only(left: 18, top: 59),
        //     child: ),
      ),
    );
  }

  void next() => controller.nextPage();
  void prev() => controller.previousPage();
  carouselIndicator() {
    return Padding(
      padding: const EdgeInsets.only(top: 436),
      child: Align(
        alignment: Alignment.center,
        child: AnimatedSmoothIndicator(
          activeIndex: activeindex,
          count: image.length,
          effect: SlideEffect(
            spacing: 0,
            dotHeight: 4,
            dotWidth: 84,
            activeDotColor: Colors.deepOrange.withOpacity(.6),
            dotColor: Colors.grey.withOpacity(.6),
          ),
        ),
      ),
    );
  }
}
