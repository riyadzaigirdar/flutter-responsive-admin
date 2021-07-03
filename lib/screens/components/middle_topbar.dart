import 'package:flutter/material.dart';

class MiddleTopbar extends StatelessWidget {
  const MiddleTopbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "My Files", 
          style: Theme.of(context).textTheme.headline6.copyWith(
            fontWeight: FontWeight.bold
          ),
        ),
        ElevatedButton.icon(
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0)
          ),
          onPressed: (){}, 
          icon: Icon(Icons.add), 
          label: Text("Add New")
        )
      ],
    );
  }
}