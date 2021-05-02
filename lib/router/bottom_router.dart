import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:get/get.dart';
import 'package:instagramclone/screens/activity_screen.dart';
import 'package:instagramclone/screens/home_screen.dart';
import 'package:instagramclone/screens/profile_screen.dart';
import 'package:instagramclone/screens/reels_screen.dart';
import 'package:instagramclone/screens/search_screen.dart';

class Controller extends GetxController {
  var index = 3.obs;
  void changeIndex(int val) {
    index.value = val;
    update();
  }
}

class BottomRouter extends StatelessWidget {
  final Controller controller = Get.put(Controller());
  final screens = [
    HomeScreen(),
    SearchScreen(),
    ReelsScreen(),
    ActivityScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() => screens[controller.index.value]),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.index.value,
          onTap: controller.changeIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black54,
          elevation: 2,
          iconSize: 30,
          type: BottomNavigationBarType.fixed,
          items: [
            bottomIcon(Icons.home_filled, 'home'),
            bottomIcon(FontAwesome.search, 'search'),
            bottomIcon(Icons.ondemand_video_rounded, 'reels'),
            bottomIcon(FontAwesome.heart_empty, 'activity'),
            bottomIcon(Icons.person, 'profile'),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem bottomIcon(IconData icon, String label) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
