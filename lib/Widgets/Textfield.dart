import 'package:flutter/material.dart';

class textField extends StatelessWidget {

  final title;
  final icon;

  textField(
      {required this.icon,
      required this.title,
      });



  @override
  Widget build(BuildContext context) {
    return  TextField(
                    cursorColor: Colors.black,
                    
                    decoration: InputDecoration(
                      prefixIcon: Icon(icon),
                      filled: true,
                      fillColor: Color(0xffE7E7F2),
                      labelText: title,
                      labelStyle: TextStyle(color: Colors.black),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                              10.0), // Set border radius when focused
                          borderSide: BorderSide(color: Colors.transparent)),
                    ),
                  );
  }
}