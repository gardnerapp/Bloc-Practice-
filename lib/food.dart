import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:may_b_this_bloc_tut_wil_work/bloc.dart';
import 'models/models.dart';
import 'bloc.dart';
import 'event/food_event.dart';

class FoodList extends StatefulWidget {
  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        child: BlocConsumer<FoodBloc, List<Food>>(
          buildWhen: (List<Food> previous, List<Food> current){
              return true;
          },
          listenWhen: (List<Food> previous, List<Food> current) {
            if(current.length > previous.length){
              return true; //helps show snack bar 
            }
            return false;
          },
          builder: (context, foodList) {
            return ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: EdgeInsets.all(16.0),
              itemCount: foodList.length,
              itemBuilder: (context, i) {
                return Card(
                  child: ListTile(
                    title: Text(foodList[i].name),
                    onTap: () => BlocProvider.of<FoodBloc>(context)
                        .add(FoodEvent.delete(i)),
                  ),
                );
              },
            );
          },
          listener: (BuildContext context, foodList) {
            Scaffold.of(context)
                .showSnackBar(SnackBar(content: Text("Added ")));
          },
        ));
  }
}
