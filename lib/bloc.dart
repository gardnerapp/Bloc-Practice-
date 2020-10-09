import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:may_b_this_bloc_tut_wil_work/event/food_event.dart';
import 'package:may_b_this_bloc_tut_wil_work/models/models.dart';

class FoodBloc extends Bloc<FoodEvent, List<Food>> {
  @override
  List<Food> get initialState => List<Food>();

  @override
  Stream<List<Food>> mapEventToState(FoodEvent event) async*{
    switch(event.eventType){
      case EventType.add:
        List<Food> newState = List.from(state);
        if(event.food != null){
          newState.add(event.food);
        }
        yield newState; //continous return
          break;
      case EventType.delete:
        List<Food> newState = List.from(state);
        newState.removeAt(event.index);
        yield newState;
      break;
      default:
        throw Exception("Event not Found  $event");
    }
  }
}