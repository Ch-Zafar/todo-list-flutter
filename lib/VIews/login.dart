import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'dart:async';
import 'package:page_transition/page_transition.dart';
import 'package:todolist/VIews/forgotPassword.dart';
import 'package:todolist/VIews/signup.dart';
import 'package:todolist/Widgets/Textfield.dart';

final RoundedLoadingButtonController _btnController =
    RoundedLoadingButtonController();

bool? isChecked = false;

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(50),
          child: Center(
            child: Container(
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  
                  textField(icon: Icons.person, title: "Enter the Username"),
                  textField(icon: Icons.lock, title: "Enter the Password"),
                  Row(children: [
                    Checkbox(
                        value: isChecked,
                        activeColor: Colors.blue,
                        onChanged: (newBool) {
                          setState(() {
                            isChecked = newBool;
                          });
                        }),
                    Text("Remember me"),
                  ]),
                  RoundedLoadingButton(
                    child: Text('Login',
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
                  Row(
                    children: [
                      Text("Didnt had an account!"),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: ()=>{
                          Navigator.push(context, PageTransition(child: SignUp(), type: PageTransitionType.fade))
                        },
                          child: Text(
                        "SignUp",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      )),
                    ],
                  ),
                  GestureDetector(
                    onTap: ()=>{
                      Navigator.push(context, PageTransition(child: ForgotPassword(), type: PageTransitionType.fade))
                    },
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.red,
                          decorationThickness: 2),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
