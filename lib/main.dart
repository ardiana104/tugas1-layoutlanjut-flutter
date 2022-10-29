// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:layout_lanjutardi/UI/home.dart';

// Top Level
void main() {
  runApp(MyApp());
}

// Widget Stateless digunakan untuk menagani aplikasi sederhana
class MyApp extends StatelessWidget {
  @override
// Isi Dari Widget
  Widget build(BuildContext context) {
// Material App
    return MaterialApp(
      title: 'First App',
      // Home Page
      home: Home(),
    );
  }
}

// Edit di bagian ini
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
