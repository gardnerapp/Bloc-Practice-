import 'package:flutter/material.dart';

class Count extends StatelessWidget {
  final int count;
  final VoidCallback onCountSelected; //notifies that button was selected
  final Function(int) onCountChange;
  Count({ @required this.count, this.onCountSelected, @required this.onCountChange });
  @override
  Widget build(BuildContext context) {
    return Row( mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(icon: Icon(Icons.add),
        onPressed: () => onCountChange(1),),
        FlatButton(onPressed: () => onCountSelected, child: Text("$count")),
        IconButton(icon: Icon(Icons.remove),
          onPressed: () => onCountChange(-1),),
      ],
    );
  }
}
