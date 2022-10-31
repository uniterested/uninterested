import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uninterested/modules/description/controller/decription_controller.dart';

class DescripitonView extends GetView<DescriptionController> {
  const DescripitonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios_new_rounded))),
      body: SingleChildScrollView(
        child: Column(
          children: const [],
        ),
      ),
    );
  }
}
