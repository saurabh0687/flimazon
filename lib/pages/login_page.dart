// ignore_for_file: prefer_const_constructors
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
 final _formkey=GlobalKey<FormState>();
 moveToHome(BuildContext context)
    async{
      if(_formkey.currentState!.validate()){
                                  // hmne ise ontap wale function se utha kr ynha dal diya 
                                  // ab hm us function me is moveToHomepage ko call kr denge
       setState(() {
       setButton=true;
               
      }); 
      await Future.delayed(Duration(seconds:1));         // ye hmare login button pr click hone ke 1 sec bad hme dusre page pr le jayega
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
       setState(() {
       setButton=false;          // ab jese hi hm wps login page pr aayenge to login button wps se phle jesa ho jayega
               
      });
              
      }                       
 }

  Widget build(BuildContext context) {
    return  Material(
      color: Colors.white,
      child:SingleChildScrollView(
      child: Column(
          children: [Image.asset("assets/login2.png",fit: BoxFit.cover,),
          const SizedBox(height: 20,),// use to provide space of given height b/w image and text(welcome)
           Text("Welcome $name",
               style: TextStyle(
               fontSize: 28,
               fontWeight: FontWeight.bold
                  ),
                ),
            const SizedBox(height: 20,),

        Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 32),
            child:Form(
              key:_formkey,
              child: Column(
                children: [
                  TextFormField( 
                   decoration: const InputDecoration (
                   hintText: "Enter User Name",
                   labelText:("Username"),
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return "Username cannot be empty ";
                        }
                        return null;
                      },
                        onChanged:(value){
                        name=value;
                        setState(() {               //hme welcome ke aage apna user name bhi add krna hai isliye hm setState se build ko dobara call kr rhe hain
                                          // build method ko dobara call krta h setStates; ku ki build function ka kam hi to ui ko bnana h ,hmne sara ui ka code build ke andr hi to likha hai
                         });
                       },
                      ),
                   TextFormField( 
                    obscureText: true,                 //this is used to hide the password
                     decoration: const InputDecoration(
                     hintText: "Enter Password",
                     labelText:("Password"),
                     ),
                        validator: (value){
                        if(value!.isEmpty){
                          return "Password cannot be empty ";
                        }
                        else if(value.length<6)
                        {
                        return "Password length must be atleast 6";
                        }
                       
                        return null;
                      },
                     ),
                     const SizedBox(height: 60),
                      Material(
                       color:Colors.deepPurple,
                       borderRadius: BorderRadius.circular(20),
                      
                                //inkwell hme onTap function dega jiska kam tap krne pr action lena hoga
                                                // ese red splash hmare button ke pichhe dikhega mgr hme aage lana hai 
                           child:InkWell(                          // to iske liye hm do kam kr skte hain - ya to hm animated container ki jgh ink ka use kr le ya phir Inkwell ko kisi widget me wrap kr de
                                     onTap: () => moveToHome(context),
                               child:AnimatedContainer( 
                                 duration: Duration(seconds: 1),              // hm container ka use kr ke buttun bna rhe hain to is pr hm click nhi kr payenge isiliye hm InkWell ka use krenge
                                 width:60,
                                  height:40,
                                   alignment: Alignment.center,
                                    child:setButton?Icon(                      // ye login button ko setbutton true yani press hone pr tick wale sign se change kr dega
                                          Icons.done,
                                           color: Colors.white,
                                              )
                                                        //   color:Colors.deepPurple,ise hmne hta diya ku ki hm ise decoration me de rhe hain or ek bar me hm do jagah nhi de skte
                                           : Text(
                                                "Login",
                                                 style:TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                   fontSize: 18,
                                                   color: Colors.white,  
                                                  )
                                                  ),
                      
            
                                          ),
                                      ),
                                   ),
                   // ElevatedButton(onPressed:(){
                       //       Navigator.pushNamed(context, MyRoutes.homeRoute);  // we passed call back function to this as we pressed it back the given function
                   //  }, child: Text("login"),
                  //  style: TextButton.styleFrom(minimumSize: Size(130,40)),// ab hm cha rhe hain ki jese hi login pr click ho to hm homepage pr chle jaye
                  //  )
                      ],
                    ),
            ),
       
        )
        
       ],
      )
    )
    );
  }
}