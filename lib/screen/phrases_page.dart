import 'package:flutter/material.dart';
//import 'package:tuco/components/item.dart';
import 'package:tuco/components/phrasesitem.dart';
import 'package:tuco/models/numbers.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<Numbers> phraseslist = const [
    Numbers(
      sound: 'assets/sounds/phrases/are_you_coming.wav',
      jpName: 'Kimasu ka?', 
      enName: 'Are you coming?',
    ),
    Numbers(
      sound: 'assets/sounds/phrases/dont_forget_to_subscribe.wav',
      jpName: 'Kōdoku o wasurenaide', 
      enName: 'Don\'t forget to subscribe',
    ),
    Numbers(
      sound: 'assets/sounds/phrases/how_are_you_feeling.wav',
      jpName: 'Go kibun wa ikagadesu ka?', 
      enName: 'How are you feeling?',
    ),
    Numbers(
      sound: 'assets/sounds/phrases/i_love_anime.wav',
      jpName: 'Anime ga daisuki', 
      enName: 'I love anime',
    ),
    Numbers(
      sound: 'assets/sounds/phrases/i_love_programming.wav',
      jpName: 'Puroguramingu ga daisuki', 
      enName: 'I love programming',
    ),
    Numbers(
      sound: 'assets/sounds/phrases/programming_is_easy.wav',
      jpName: 'Puroguramingu wa kantan', 
      enName: 'Programming is easy',
    ),
    Numbers(
      sound: 'assets/sounds/phrases/what_is_your_name.wav',
      jpName: 'Anata no namae wa nan desu ka?',
      enName: 'What is your name?',
    ),
    Numbers(
      sound: 'assets/sounds/phrases/where_are_you_going.wav',
      jpName: 'Doko ni iku no?', 
      enName: 'Where are you going?',
    ),
    Numbers(
      sound: 'assets/sounds/phrases/yes_im_coming.wav',
      jpName: 'Hai, ikimasu', 
      enName: 'Yes, I’m coming',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),  
        title: const Text("Phrases", style: TextStyle(color: Colors.white)), 
      ),
      body: ListView.builder(
        itemCount: phraseslist.length,
        itemBuilder: (BuildContext context, index) {
          return PhrasesItem(item: phraseslist[index], color: const Color(0xff50ADC7)); 
        },
      ),
    );
  }
}
