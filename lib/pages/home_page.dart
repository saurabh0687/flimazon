import 'package:flimazon/widgets/drawer.dart';
import 'package:flutter/material.dart';

//import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {  //ye ek HomePage nam ki stateless widget bn gyi jise hmne apne according bnaya hai
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(  //scaffold ek widget hai jisme head(Appbar) body and footer hota hai
      appBar: AppBar( 
           //appBar- property hai jbki AppBar ek widget hai 
        
        title: const Text("Flimazon"),
      ),
      body: Center(
        
        child: Container(  // container ek widget hai jise hm container ki trh hi use krte hain
          child: const Text("Welcome",style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple
          ),), //text widget hm text ko display krane ke liye krte hain
        )
        ),
        drawer: MyDrawer(),//  ynha se drawer  ko hta kr ek alg file me dal diya hai or uske constructor ko call kra diya hai
    );
  }
}