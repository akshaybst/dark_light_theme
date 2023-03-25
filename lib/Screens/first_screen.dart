import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:light_dark/Screens/home_widget.dart';
import 'package:light_dark/Screens/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Get.to(const HomeWidget());
              },
              icon: const Icon(Icons.home_filled)),
          const SizedBox(width: 30,)
        ],
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Card(
            child: ListTile(
              onTap: () {Get.to(const SecondScreen());},
              title: const Text('How are You?'),
              subtitle: const Text('I\'m fine'),
              trailing: const Icon(
                Icons.favorite,
                color: Colors.pink,
              ),
            ),
          ),
        );
      }),
    );
  }
}
