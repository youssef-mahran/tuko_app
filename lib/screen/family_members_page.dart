import 'package:flutter/material.dart';
import 'package:tuco/components/item.dart';
import 'package:tuco/models/numbers.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});

  final List<Numbers> number = const [
    Numbers(
      sound: 'assets/sounds/family_members/father.wav',
      image: 'assets/images/family_members/family_father.png',
      jpName: 'Chichi',
      enName: 'Father',
    ),
    Numbers(
      sound: 'assets/sounds/family_members/mother.wav',
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Haha',
      enName: 'Mother',
    ),
    Numbers(
      sound: 'assets/sounds/family_members/grandfather.wav',
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'Sofu',
      enName: 'Grandfather',
    ),
    Numbers(
      sound: 'assets/sounds/family_members/grandmother.wav',
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'Sobo',
      enName: 'Grandmother',
    ),
    Numbers(
      sound: 'assets/sounds/family_members/olderbother.wav',
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'Ani',
      enName: 'Older Brother',
    ),
    Numbers(
      sound: 'assets/sounds/family_members/oldersister.wav',
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Ane',
      enName: 'Older Sister',
    ),
    Numbers(
      sound: 'assets/sounds/family_members/youngerbrohter.wav',
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Otouto',
      enName: 'Younger Brother',
    ),
    Numbers(
      sound: 'assets/sounds/family_members/youngerbrohter.wav',
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imouto',
      enName: 'Younger Sister',
    ),
    Numbers(
      sound: 'assets/sounds/family_members/son.wav',
      image: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      enName: 'Son',
    ),
    Numbers(
      sound: 'assets/sounds/family_members/daughter.wav',
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      enName: 'Daughter',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text("Family Members", style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: number.length,
        itemBuilder: (BuildContext context, index){
          return Item(number: number[index], color: const Color(0xff558B37));
        },
      ),
    );
  }
}
