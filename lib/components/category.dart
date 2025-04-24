import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String? text;
  final Color? color;
  final VoidCallback? onTapp;
  const Category({super.key, this.text, this.color, this.onTapp});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapp,
      child: Container(
        padding: const EdgeInsets.only(left: 24), 
        alignment: Alignment.centerLeft, 
        height: 65,
        width: double.infinity,
        color: color,
        child: Text(
          text!,
          style: const TextStyle( 
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
