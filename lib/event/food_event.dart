import 'package:may_b_this_bloc_tut_wil_work/models/models.dart';

enum EventType{add, delete} //enums are a list

class FoodEvent{
  Food food;
  int index;
  EventType eventType;

  FoodEvent.add(Food food){
    this.eventType = EventType.add;
    this.food = food;
  }

  FoodEvent.delete(int index){
    this.eventType = EventType.delete;
    this.index = index;
  }
}