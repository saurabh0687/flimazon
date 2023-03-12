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
   var catelogJson =await rootBundle.loadString("assets/catelog.json");
   var decodedData=jsonDecode(catelogJson);
  var productsData= decodedData["products"];
  print(productsData);
  }
  @override
  Widget build(BuildContext context) {
    final dumyList=List.generate(50,(index)=>CatelogModel.items[0]);
    return  Scaffold(  //scaffold ek widget hai jisme head(Appbar) body and footer hota hai
      appBar: AppBar( 
           //appBar- property hai jbki AppBar ek widget hai 
        
        title: const Text("Flimazon"),
      ),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
      
          child: ListView.builder(itemCount: dumyList.length,
      itemBuilder: (context, index){
        return ItemWidget(
          item: dumyList[index],
        );
      },
      ),
      ),
        drawer: MyDrawer(),//  ynha se drawer  ko hta kr ek alg file me dal diya hai or uske constructor ko call kra diya hai
    );
  }
}