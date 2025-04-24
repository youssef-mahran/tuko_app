import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:tuco/screen/home_page.dart';


  void main() =>
   runApp(DevicePreview(
    enabled: true, builder: (context) => TocuApp()));

class TocuApp extends StatelessWidget {
  const TocuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: HomePage());
  }
}
