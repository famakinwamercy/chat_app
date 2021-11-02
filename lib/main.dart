import 'package:chat_app/chat_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomeApp());
}
class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: ChatApp(),);
  }
}
