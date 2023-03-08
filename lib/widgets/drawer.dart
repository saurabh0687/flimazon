// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flimazon/pages/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/routes.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  final imageUrl="https://media.istockphoto.com/id/1130884625/vector/user-member-vector-icon-for-ui-user-interface-or-profile-face-avatar-app-in-circle-design.jpg?s=612x612&w=0&k=20&c=1ky-gNHiS2iyLsUPQkxAtPBWH1BZt0PKBB1WBtxQJRE=";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
        child: Container(
          
          child: ListView( 
            padding: EdgeInsets.zero,
             children: [
                  DrawerHeader(
                    padding: EdgeInsets.zero,
                    child: UserAccountsDrawerHeader
                     (  margin: EdgeInsets.all(0),
                
                           accountName: Text("Saurabh Baghel"), 
                            accountEmail: Text("baghelsaurabh687@gmail.com"),
                            currentAccountPicture: CircleAvatar(
                              backgroundImage: NetworkImage(imageUrl),
                              ),
                                ),
                               ),
                              ListTile(
                                leading: Icon(
                                  CupertinoIcons.home,
                                  color: Colors.black,
                                ),
                               title:Text(
                                "Home",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                  color: Colors.black
                                ),
                               ),
                              ),
                              ListTile(
                                leading: Icon(
                                  CupertinoIcons.mail,
                                  color: Colors.black,
                                ),
                               title:Text(
                                "Email",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                  color: Colors.black
                                ),
                               ),
                              ),
                              ListTile(
                                leading: Icon(
                                  CupertinoIcons.phone,
                                  color: Colors.black,
                                ),
                               title:Text(
                                "Contact",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                  color: Colors.black
                                ),
                               ),
                              ),
                              ListTile(
                                leading: Icon(
                                  CupertinoIcons.settings,
                                  color: Colors.black,
                                ),
                               title:Text(
                                "Setting",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                  color: Colors.black
                                ),
                               ),
                              ),
                                 Padding(
          padding: EdgeInsets.only(top:340),
          child: InkWell(
            onTap: (){
             // Provider.of<Auth>(context, listen: false).logout();

              Navigator.pushNamed(context, MyRoutes.loginRoute);},
            child: Row(
              children: <Widget>[
                Expanded(flex: 2, child: Icon(Icons.logout)),
                Expanded(
                    flex: 10,
                    child: Text(
                      'Logout',
                      style: TextStyle(fontSize: 15),
                    ))
              ],
            ),
          ),
        ),
                             ], 
                            ),
                              ),
                        );
                      }
                  }                          