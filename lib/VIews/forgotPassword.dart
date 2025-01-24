import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todolist/Widgets/Textfield.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

final RoundedLoadingButtonController _btnController =
    RoundedLoadingButtonController();

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          centerTitle: true,
          title: Text("Forgot Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
        ),
        body: Container(
          child: Padding(
            padding: EdgeInsets.all(50),
            child: Center(
              child: Container(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  textField(icon: Icons.email, title: "Enter your gmail"),
                  RoundedLoadingButton(
                    child: Text('Submit',
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
                  )
                ]),
              ),
            ),
          ),
        ));
  }
}
