import 'package:flutter/material.dart';
import 'package:tuco/components/item_model.dart';
import 'package:tuco/models/numbers.dart';

class Item extends StatelessWidget {
  const Item({
    Key? key,
    required this.number,
    required this.color,
  }) : super(key: key);

  final Numbers number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF6DC),
            child: Image.asset(number.image!),
          ),
          Expanded(
            child: ItemInfo(item: number),
          )
        ],
      ),
    );
  }
}
