import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:todolist/VIews/login.dart';
import 'package:todolist/Widgets/Textfield.dart';
import 'package:page_transition/page_transition.dart';


final RoundedLoadingButtonController _btnController =
    RoundedLoadingButtonController();

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,foregroundColor: Colors.white,
        title: Text("SignUp",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),textAlign: TextAlign.center,),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Center(
            child: Container(
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  textField(icon: Icons.person, title: "Enter the Username"),
                  textField(icon: Icons.email, title: "Enter the email adress"),
                  textField(icon: Icons.lock, title: "Enter the Password"),
                  Row(
                    children: [
                      Text("Already have an accout!"),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: ()=>{
                          Navigator.push(context, PageTransition(child: login(), type: PageTransitionType.fade))
                        },
                          child: Text(
                        "LogIn",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      )),
                    ],
                  ),
                  RoundedLoadingButton(
                        child: Text('SignUp',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20)),
                        controller: _btnController,
                        onPressed: () => {
                          Timer(Duration(seconds: 1), () {
                            _btnController.success();
                          })
                        },
                      ),
                      
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
