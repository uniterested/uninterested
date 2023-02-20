import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:uninterested/home/cart_screen.dart';
import 'package:uninterested/home/dashboardScreen.dart';
import 'package:uninterested/home/myorders.dart';
import 'package:uninterested/home/profile_screen.dart';
import 'package:uninterested/home/wishlist.dart';
import 'package:uninterested/utilities/AppColor.dart';
import 'package:uninterested/utilities/AppIcons.dart';


class BottomNavigation extends StatefulWidget {
  
   const BottomNavigation({super.key});
   
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedindex=0;
   List screens=[
    DashBoardScreen(),
    WishlistScreen(),
    CartScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 16,bottom: 7),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(17),
          child: SizedBox(
            height: 45.9,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: AppColorPallet.navy,
              currentIndex: _selectedindex,
              onTap: ((value) => setState(() {
                _selectedindex=value;
                Navigator.of(context).push(
                         MaterialPageRoute(builder: (context) => screens[_selectedindex]));
              })),
              selectedItemColor: AppColorPallet.grey,
              unselectedItemColor:AppColorPallet.white,
              selectedFontSize: 0,
              unselectedFontSize: 0,
              items: const [
                  BottomNavigationBarItem(icon:ImageIcon(AssetImage(AppLeadingIcons.homeIcon)),
              label: "",
              
              ),
               BottomNavigationBarItem(icon:ImageIcon(AssetImage(AppLeadingIcons.heartIcon),
               ),
              label: ""),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppLeadingIcons.cartIcon),
            ),
               label: ""),
                 BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppLeadingIcons.userIcon),
              ),
               label: "")
            ],
        
            ),
          ),
        ),
      ),
    ) ;
  }
}

