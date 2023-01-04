import 'package:flutter/material.dart';
import 'package:uninterested/home/dashboard.dart';
import 'package:uninterested/home/product.dart';
import 'package:uninterested/modules/description/view/description_view.dart';

import 'home/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'SFPro',
        // primarySwatch: Colors.blue,
      ),
      home: const ProfileScreen(),
    );
  }
}
