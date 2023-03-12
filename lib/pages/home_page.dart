// ignore_for_file: prefer_const_constructors

import 'package:flimazon/models/catelog.dart';
import 'package:flimazon/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

import '../widgets/item_widget.dart';

//import '../widgets/drawer.dart';

class HomePage extends StatefulWidget {  //ye ek HomePage nam ki stateful widget bn gyi jise hmne apne according bnaya hai
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }
  loadData() async
  {
    await Future.delayed(Duration(seconds:2));
   var catelogJson =await rootBundle.loadString("assets/catelog.json");
   var decodedData=jsonDecode(catelogJson);
  var productsData= decodedData["products"];
   CatelogModel.items=List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList();
   setState(() {
     
   });

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(  //scaffold ek widget hai jisme head(Appbar) body and footer hota hai
      appBar: AppBar( 
           //appBar- property hai jbki AppBar ek widget hai 
        
        title: const Text("Flimazon"),
      ),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
      
          child: (CatelogModel.items!=null&&CatelogModel.items.isNotEmpty)?ListView.builder(itemCount: CatelogModel.items.length,
      itemBuilder: (context, index)=>
        ItemWidget(
          item: CatelogModel.items[index],
      ),
          )
      :Center(
        child: CircularProgressIndicator(),
      ),
      ),
        drawer: MyDrawer(),//  ynha se drawer  ko hta kr ek alg file me dal diya hai or uske constructor ko call kra diya hai
    );
  }
}