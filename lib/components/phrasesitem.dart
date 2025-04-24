import 'package:flutter/material.dart';
import 'package:tuco/components/item_model.dart';
import 'package:tuco/models/numbers.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({Key? key, required this.item, required this.color})
      : super(key: key);

  final Numbers item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: ItemInfo(item: item),
    );
  }
}
