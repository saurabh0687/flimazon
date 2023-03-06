import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.white,
      child: Column(
       children: [Image.asset("assets/login.png",fit: BoxFit.cover,),
        const SizedBox(height: 20,),// use to provide space of given height b/w image and text(welcome)
       const Text("Welcome",
       style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold
       ),
       ),
        const SizedBox(height: 20,),
         Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 32),
        child: Column(
          children: [
            TextFormField(
          decoration: const InputDecoration (
            hintText: "Enter User Name",
            labelText:("Username"),
          ),
        ),
         TextFormField( 
          obscureText: true,//this is used to hide the password
          decoration: const InputDecoration(
            hintText: "Enter PassWord",
            labelText:("Password"),
          ),
        ),
         const SizedBox(height: 20,),
         ElevatedButton(onPressed:(){
                    print("Hi saurabh");                       // we passed call back function to this as we pressed it back the given function
         }, child: Text("login"),
        style: TextButton.styleFrom(

        ),)
          ],
        ),
       
        )
        
       ],
      )
    );
  }
}