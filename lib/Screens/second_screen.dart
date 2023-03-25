import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:light_dark/Screens/home_widget.dart';
import 'package:light_dark/Screens/third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Get.to(const HomeWidget());
              },
              icon: const Icon(Icons.home_filled)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'How are you?',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  Get.to(const ThirdScreen());
                },
                child: const Text('Next')),
          ],
        ),
      ),
    );
  }
}
