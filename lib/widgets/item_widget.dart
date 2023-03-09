// ignore_for_file: prefer_const_constructors

import 'package:flimazon/models/catelog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key,required this.item}):assert(item!=null),
  super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
    
      child: ListTile(
        onTap: () {
           
        },
        leading: Image.asset("assets/iphone.jpg"),
        title:Text(item.name,
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
        ),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.3,
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}