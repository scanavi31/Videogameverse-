import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:red_jugadores/ui/pages/content/content_page.dart';
//import 'package:red_jugadores/ui/pages/content/profile/profile_screen.dart';

class CustomAppBar extends AppBar {
  final BuildContext context;
  final String picUrl;
  final Widget tile;
  final VoidCallback onSignOff;

  // Creating a custom AppBar that extends from Appbar with super();
  CustomAppBar(
      {Key? key,
      required this.context,
      required this.picUrl,
      required this.tile,
      required this.onSignOff})
      : super(
          key: key,
          centerTitle: true,
          leading: Center(
            child: GestureDetector(
              onTap: () {
                print('onclick');
                // We add the two possible routes
                //const ProfileScreen();
              },
              child: CircleAvatar(
                minRadius: 18.0,
                maxRadius: 18.0,
                backgroundImage: NetworkImage(picUrl),
              ),
            ),
          ),
          title: tile,
          actions: [
            IconButton(
              key: const Key("themeAction"),
              icon: const Icon(
                Icons.brightness_4_rounded,
              ),
              onPressed: () {
                Get.changeThemeMode(
                    Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
              },
            ),
            IconButton(
              key: const Key("logoutAction"),
              icon: const Icon(
                Icons.logout,
              ),
              onPressed: onSignOff,
            )
          ],
        );
}
