import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:uninterested/home/cart_screen.dart';
import 'package:uninterested/home/dashboard2.dart';
import 'package:uninterested/home/myorders.dart';
import 'package:uninterested/home/notification.dart';
import 'package:uninterested/home/payment_screen.dart';
import 'package:uninterested/home/product.dart';
import 'package:uninterested/home/wishlist.dart';
import 'package:uninterested/intro/main_page.dart';
import 'package:uninterested/login/log_in.dart';
import 'package:uninterested/login/otp_screen.dart';
import 'package:uninterested/modules/description/view/description_view.dart';
import 'package:uninterested/utilities/app_bar.dart';
import 'package:uninterested/utilities/bottom_nav.dart';
import 'home/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'SFPro',
        // primarySwatch: Colors.blue,
      ),
      // home: const PaymentOptions(),
      initialRoute: '/InitialLoadingScreen',
      getPages: [
        GetPage(
          name: '/InitialLoadingScreen',
          page: () => Landing(),
        ),
        GetPage(
          name: '/LogInScreen',
          page: () => LogInScreen(),
        ),
        GetPage(
          name: '/OTPscreen',
          page: () => OtpScreen(),
        ),
        GetPage(
          name: '/DashboardScreen',
          page: () => DashBoardScreen(),
        ),
        GetPage(
          name: '/ProductScreen',
          page: () => Productscrn(),
        ),
        GetPage(
          name: '/WishListScreen',
          page: () => WishlistScrn(),
        ),
        GetPage(
          name: '/CartScreen',
          page: () => CartScreen(),
        ),
        GetPage(
          name: '/MyOrdersScreen',
          page: () => MyOrders(),
        ),
        GetPage(
          name: '/PaymentScreen',
          page: () => PaymentOptions(),
        ),
        GetPage(
          name: '/NotificationScreen',
          page: () => NotificationScrn(),
        ),
      ],
    );
  }
}
