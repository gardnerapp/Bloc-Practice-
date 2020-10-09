import 'package:flutter/material.dart';
import 'package:may_b_this_bloc_tut_wil_work/CounterPag.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          title: "Coding With Corey",
          theme: ThemeData(
              primarySwatch: Colors.amber, secondaryHeaderColor: Colors.orange),
          home: CounterPage(),
        );
  }
}
