import 'package:get/get.dart';

class DescriptionController extends GetxController {
  int pageIndex = 0;

  carouselChange(index) {
    pageIndex = index;
    update();
  }
}
