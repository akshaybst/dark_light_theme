import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:light_dark/Screens/first_screen.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

bool isdark = true;

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        actions: [
          IconButton(
            onPressed: () {
              Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
              setState(() {
                isdark = !isdark;
              });
            },
            icon: isdark
                ? const Icon(Icons.light_mode)
                : const Icon(Icons.dark_mode),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              Get.to(const FirstScreen());
            },
            child: const Text('Next Widget')),
      ),
    );
  }
}
