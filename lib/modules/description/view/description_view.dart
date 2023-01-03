import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uninterested/modules/description/controller/decription_controller.dart';

class DescripitonView extends GetView<DescriptionController> {
  final DescriptionController _descriController =
      Get.put(DescriptionController());
  DescripitonView({super.key});

  @override
  Widget build(BuildContext context) {
    List<dynamic> img = [
      'assets/image1.jfif',
      'assets/image2.jfif',
    ];
    return Scaffold(
      appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_checkout),
                color: const Color.fromARGB(255, 132, 144, 160))
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            color: const Color.fromARGB(255, 132, 144, 160),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                CarouselSlider(
                  items: img
                      .map(
                        (item) => Container(
                          margin: const EdgeInsets.only(bottom: 15.0),
                          color: const Color.fromARGB(255, 255, 255, 255),
                          child: Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage(item),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),

                  //Slider Container properties
                  options: CarouselOptions(
                    onPageChanged: ((index, reason) {
                      _descriController.carouselChange(index);
                    }),
                    initialPage: 0,
                    height: 315,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    viewportFraction: 0.9,
                  ),
                ),
                GetBuilder<DescriptionController>(builder: (context) {
                  return CarouselIndicator(
                    color: const Color.fromARGB(255, 132, 144, 160),
                    activeColor: const Color.fromARGB(255, 205, 63, 53),
                    count: img.length,
                    index: _descriController.pageIndex,
                  );
                }),
              ],
            ),
            const SizedBox(
              height: 29,
            ),
            const Divider(
              color: Color.fromARGB(255, 132, 144, 160),
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23.0, right: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Antique Doll For Kids',
                    style: GoogleFonts.ubuntu(
                        color: const Color.fromARGB(255, 85, 88, 92),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite),
                    color: const Color.fromARGB(255, 205, 63, 53),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26.0, top: 5),
              child: Row(
                children: [
                  Text(
                    '100% Cotton',
                    style: GoogleFonts.ubuntu(
                        color: const Color.fromARGB(255, 162, 165, 170),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
