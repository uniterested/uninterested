import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uninterested/home/commonContainer.dart';
import 'package:uninterested/home/dashboard.dart';
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
  int currentindex=0;
  List screens=[
    DashBoardScreen(),
    WishlistScrn(),
    CommonContainer(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  BottomNav(),
      body: screens[currentindex],
    );
  }
}


class BottomNav extends StatefulWidget {
   const BottomNav({super.key});
   
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentindex=0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 16,bottom: 7),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(17),
        child: SizedBox(
          height: 45.9,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColorPallet.navy,
            currentIndex: currentindex,
            onTap: ((value) => setState(() {
              currentindex=value;
            })),
              
            selectedFontSize: 0,
            unselectedFontSize: 0,
            items: [
               BottomNavigationBarItem(icon:Image.asset(AppLeadingIcons.homeIcon,
                 color: currentindex==0? Colors.grey:Colors.white
                ,),
            label: "",
            ),
             BottomNavigationBarItem(icon:Image.asset(AppLeadingIcons.heartIcon,
             color: currentindex==1? Colors.grey:Colors.white),
            label: ""),
              BottomNavigationBarItem(icon: Image.asset(AppLeadingIcons.cartIcon,
              color: currentindex==2? Colors.grey:Colors.white),
             label: ""),
               BottomNavigationBarItem(icon: Image.asset(AppLeadingIcons.userIcon,
               color: currentindex==3? Colors.grey:Colors.white),
             label: "")
          ],
      
          ),
        ),
      ),
    ) ;
  }
}