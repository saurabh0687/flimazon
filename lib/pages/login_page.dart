import 'package:flimazon/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  String name="";
  bool setButton=false;
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.white,
      child:SingleChildScrollView(
      child: Column(
       children: [Image.asset("assets/login.png",fit: BoxFit.cover,),
        const SizedBox(height: 20,),// use to provide space of given height b/w image and text(welcome)
        Text("Welcome $name",
       style: TextStyle(
        fontSize: 28,
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
          onChanged:(value){
            name=value;
            setState(() {
                          // build method ko dobara call krta h setStates; ku ki build function ka kam hi to ui ko bnana h ,hmne sara ui ka code build ke andr hi to likha hai
                          
            });
          },
        ),
         TextFormField( 
          obscureText: true,//this is used to hide the password
          decoration: const InputDecoration(
            hintText: "Enter Password",
            labelText:("Password"),
          ),
        ),
         const SizedBox(height: 20,),
         InkWell(    //inkwell hme onTap function dega jiska kam tap krne pr action lena hoga
          onTap: () async{ 
            setState(() {
              setButton=true;
             
            }); 
            await Future.delayed(Duration(seconds:1));  // ye hmare login button pr click hone ke 1 sec bad hme dusre page pr le jayega
            Navigator.pushNamed(context, MyRoutes.homeRoute);
            
          },
         child:AnimatedContainer( 
          duration: Duration(seconds: 1), // hm container ka use kr ke buttun bna rhe hain to is pr hm click nhi kr payenge isiliye hm InkWell ka use krenge
          width:60,
          height:40,
           alignment: Alignment.center,
           child:setButton?Icon(   // ye login button ko setbutton true yani press hone pr tick wale sign se change kr dega
            Icons.done,
           color: Colors.white,
           )
                                            //   color:Colors.deepPurple,ise hmne hta diya ku ki hm ise decoration me de rhe hain or ek bar me hm do jagah nhi de skte
          : Text(
            "Login",
               style:TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,  
               )
               ),
            decoration: BoxDecoration(
            color:Colors.deepPurple,
            borderRadius: BorderRadius.circular(20)
          ),

         ),
         )
       // ElevatedButton(onPressed:(){
           //       Navigator.pushNamed(context, MyRoutes.homeRoute);  // we passed call back function to this as we pressed it back the given function
       //  }, child: Text("login"),
      //  style: TextButton.styleFrom(minimumSize: Size(130,40)),// ab hm cha rhe hain ki jese hi login pr click ho to hm homepage pr chle jaye
      //  )
          ],
        ),
       
        )
        
       ],
      )
    )
    );
  }
}