//import 'dart:io';

// ignore_for_file: prefer_const_constructors

//import 'package:flutter/cupertino.dart';
import 'package:flimazon/pages/login_page.dart';
import 'package:flimazon/utils/routes.dart';
import 'package:flimazon/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:google_fonts/google_fonts.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(  
      debugShowCheckedModeBanner: false,  
     themeMode: ThemeMode.light,
    theme: MyTheme.lightTheme(context),
    darkTheme: MyTheme.darkTheme(context),
     initialRoute: MyRoutes.homeRoute,
     routes: {
   "/":(context) => const LoginPage(), // hmne route me / lga kr homepage ko default bna diya hai,or hmne upr home m bhi home page hi diya tha
    MyRoutes.homeRoute:(context) => const HomePage() ,                            //to dono me se hme ek hi jgh rkhna hai dusra htana pdega...route ka mtlb hota hai konsa page kb open hoga mtlb routing of pages
    MyRoutes.loginRoute:(context) => const LoginPage()// ye LoginPage class ka object hai iske aage hm new keyword bhi use kr skte hain
     },                              
     );
  }
}
//