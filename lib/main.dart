import 'package:flutter/material.dart';

import 'package:bytebank_persistencia/enums/tema.dart';
import 'package:bytebank_persistencia/screens/dashboard.dart';
import 'package:bytebank_persistencia/screens/contacts_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Tema.getTema(),
      home: const Dashboard(),
    );
  }
}
