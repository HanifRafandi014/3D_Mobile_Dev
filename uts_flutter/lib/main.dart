import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uts_flutter/app/widgets/history.dart';
import 'package:uts_flutter/app/widgets/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/history': (context) => HistoryPage(),
      },
    );
  }
}