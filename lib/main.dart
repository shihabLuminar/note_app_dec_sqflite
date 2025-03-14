import 'package:flutter/material.dart';
import 'package:note_app_dec_sqflite/view/note_screen/note_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
          )),
      debugShowCheckedModeBanner: false,
      home: NoteScreen(),
    );
  }
}
