import 'package:flutter/material.dart';
import 'food.dart';

class FoodListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("You The Hog!",)),
      body: FoodList(),
    );
  }
}

