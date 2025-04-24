import 'package:flutter/material.dart';
import 'package:tuco/components/item.dart';
import 'package:tuco/models/numbers.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<Numbers> number = const [
    Numbers(
      sound: 'assets/sounds/colors/black.wav',
      image: 'assets/images/colors/color_black.png',
      jpName: 'Kuro',
      enName: 'Black',
    ),
    Numbers(
      sound: 'assets/sounds/colors/brown.wav',
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Chairo',
      enName: 'Brown',
    ),
    Numbers(
      sound: 'assets/sounds/colors/dustyyellow.wav',
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Karashi-iro',
      enName: 'Dusty Yellow',
    ),
    Numbers(
      sound: 'assets/sounds/colors/gray.wav',
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Haiiro',
      enName: 'Gray',
    ),
    Numbers(
      sound: 'assets/sounds/colors/green.wav',
      image: 'assets/images/colors/color_green.png',
      jpName: 'Midori',
      enName: 'Green',
    ),
    Numbers(
      sound: 'assets/sounds/colors/red.wav',
      image: 'assets/images/colors/color_red.png',
      jpName: 'Aka',
      enName: 'Red',
    ),
    Numbers(
      sound: 'assets/sounds/colors/white.wav',
      image: 'assets/images/colors/color_white.png',
      jpName: 'Shiro',
      enName: 'White',
    ),
    Numbers(
      sound: 'assets/sounds/colors/yellow.wav',
      image: 'assets/images/colors/yellow.png',
      jpName: 'Kiiro',
      enName: 'Yellow',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text("Colors", style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: number.length,
        itemBuilder: (BuildContext context, index) {
          return Item(
            number: number[index],
            color: const Color(0xff79359F),
          );
        },
      ),
    );
  }
}
