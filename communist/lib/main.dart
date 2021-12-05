import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFFFF176), 
      body: SafeArea(
            child: SizedBox( 
              width: size.width,
              child: Padding( 

                padding: const EdgeInsets.symmetric(vertical:15.0),
                child: Column( 
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                        Container(  
                        width: size.width*0.9,
                        height: 200,
                        decoration:  BoxDecoration(
                        color: Colors.blueAccent,   
                        borderRadius: BorderRadius.all(Radius.circular(20.0))
                       ),
                       child: Padding(
                             padding: const EdgeInsets.symmetric(vertical:25.0),
                             child: Row(
                               children: [
                                   Container(
                                     width: 60,
                                     height: 60,
                                     child: Image.asset("resourses/avatar.jpg"),
                   
                                   ), 
                                   Column(
                                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                                     children: [
                                       Text("НЕГР"),
                                       Text("ZXC DEMON")
                                     ],
                                   ),
                                   Container(
                                     width: 100,
                                     height: 100,
                                     color: Colors.black,
                                   )
                                   
                               ],
                             ),
                       ),
                     )
                    
                  ],
                ),
              ),
            ),
          
      ),
    );
  }
}
