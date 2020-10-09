import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:may_b_this_bloc_tut_wil_work/bloc.dart';
import 'package:may_b_this_bloc_tut_wil_work/event/food_event.dart';
import 'package:may_b_this_bloc_tut_wil_work/models/models.dart';
import 'food.dart';
import 'list.dart';


class FoodForm extends StatefulWidget {
  @override
  _FoodFormState createState() => _FoodFormState();
}

class _FoodFormState extends State<FoodForm> {
  String _name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
      title: Text("Coding With A Corey",)),
      body: Container(
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hope Fully This Tutorial Works",
              style: TextStyle(fontSize: 50),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Enter Some Food "),
              style: TextStyle(fontSize: 22),
              onChanged: (text){
                setState(() {
                  _name = text;
                });
              },
            ),
            FoodList(),
          ],
        ),
      )),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(onPressed: () => BlocProvider.of<FoodBloc>(context).add(FoodEvent.add(Food(_name))),
          heroTag: "Button0",
            child: Icon(Icons.save),
          ),
          FloatingActionButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(
              builder: (context) => FoodListScreen(),
            )),
            heroTag: "Button1",
            child: Icon(Icons.favorite_border),
          ),
        ],
      ),
    );
  }
}
