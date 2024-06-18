import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_application_chatbot_gemini/consts.dart';
import 'package:flutter_application_chatbot_gemini/home_page.dart';
import 'package:flutter_application_chatbot_gemini/Chatpot_intro.dart';

void main() {
  Gemini.init(
    apiKey: GEMINI_API_KEY,
  );
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Chatbot_intro(),
      routes: {
        '/home_page': (context) => HomePage(),
        '/Chatpot_intro': (context) => Chatbot_intro(),
        
      },
    );
  }
}
