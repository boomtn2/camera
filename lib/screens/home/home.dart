import 'package:flutter/material.dart';

import '../../font_text.dart';
import '../../path_img.dart';
import 'app_bar.dart';
import 'item_camera.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarCustom(),
          Expanded(
              child: ListView(
            children: [
              ItemCamera(),
              ItemCamera(),
              ItemCamera(),
            ],
          )),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_rounded), label: "Thiết bị"),
          BottomNavigationBarItem(
              icon: Icon(Icons.screen_share_outlined), label: "Thư viện"),
          BottomNavigationBarItem(
              icon: Icon(Icons.directions), label: "Kết nối thông minh"),
        ],
        onTap: (value) {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Image.asset(iconProtect),
      ),
    );
  }
}
