import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_transition/page_transition.dart';
import 'package:todolist/VIews/login.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () => {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: login(),
                              type: PageTransitionType.rightToLeft))
                    },
                icon: Icon(Icons.person_2_rounded))
          ],
          title: Text(
            "Home",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: Padding(
            padding: EdgeInsets.all( 20),
            child: Column(
              children:[ TextField(
                
                obscureText: false,
                autocorrect: false,
                autofocus: false,
                decoration: InputDecoration(
                    
                    suffixIcon: Icon(Icons.search),
                    hintText: "Search",
                    fillColor: Color(0xffE7E7F2),
                    filled: true,
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.transparent)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                10.0), // Set border radius when focused
                            borderSide: BorderSide(color: Colors.transparent))
                        ),
                        
              ),
              Container(
                child: Card( child: Text("Card"),),
              )
            ])));
  }
}
