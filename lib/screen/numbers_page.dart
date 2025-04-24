import 'package:flutter/material.dart';
import 'package:tuco/components/item.dart';
import 'package:tuco/models/numbers.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  
  final List<Numbers> number = const [
    Numbers(
      sound: 'assets/sounds/numbers/number_one_sound.mp3',
      image: 'assets/images/numbers/number_one.png',
      jpName: 'Ichi',
      enName: 'One',
    ),
    Numbers(
      sound: 'assets/sounds/numbers/number_two_sound.mp3',
      image: 'assets/images/numbers/number_two.png',
      jpName: 'Ni',
      enName: 'Two',
    ),
    Numbers(
      sound: 'assets/sounds/numbers/number_three_sound.mp3',
      image: 'assets/images/numbers/number_three.png',
      jpName: 'San',
      enName: 'Three',
    ),
    Numbers(
      sound: 'assets/sounds/numbers/number_four_sound.mp3',
      image: 'assets/images/numbers/number_four.png',
      jpName: 'Shi',
      enName: 'Four',
    ),
    Numbers(
      sound: 'assets/sounds/numbers/number_five_sound.mp3',
      image: 'assets/images/numbers/number_five.png',
      jpName: 'Go',
      enName: 'Five ',
    ),
    Numbers(
      sound: 'assets/sounds/numbers/number_six_sound.mp3',
      image: 'assets/images/numbers/number_six.png',
      jpName: 'Roku',
      enName: 'Six',
    ),
    Numbers(
      sound: 'assets/sounds/numbers/number_seven_sound.mp3',
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'Shichi',
      enName: 'Seven',
    ),
    Numbers(
      sound: 'assets/sounds/numbers/number_eight_sound.mp3',
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'Hachi',
      enName: 'Eight',
    ),
    Numbers(
      sound: 'assets/sounds/numbers/number_nine_sound.mp3',
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'Kyuu',
      enName: 'Nine ',
    ),
    Numbers(
      sound: 'assets/sounds/numbers/number_ten_sound.mp3',
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'Juu',
      enName: 'Ten',
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: const Color(0xff46322B), // const here
        title: const Text("Numbers", style: TextStyle(color: Colors.white)), // const here
      ),
      body: ListView.builder(
        itemCount: number.length,
        itemBuilder: (BuildContext context, index) {
          return Item(
            number: number[index],
            color: const Color(0xffEF9335), // const here
          );
        },
      ),
    );
  }
}
