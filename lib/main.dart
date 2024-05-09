import 'package:flutter/material.dart';

//v1
//import './pages/home_page.dart';

//v2
import 'package:go_moon/pages/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Go Moon',
        theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(31, 31, 31, 1.0),
        ),
        home: HomePage());
  }
}
