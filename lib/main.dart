import 'package:cal_app/currency_converter_cupertino_app.dart';
import 'package:cal_app/currency_converter_material_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyCupertinoApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterMaterialApp(),
    );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyConverterCupertinoApp(),
    );
  }
}
