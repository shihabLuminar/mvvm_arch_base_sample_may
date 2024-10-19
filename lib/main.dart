import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_arch_base_sample_may/views/home/homeview.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homeview(),
    );
  }
}
