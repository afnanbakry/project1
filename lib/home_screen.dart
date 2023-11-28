import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.orange,size: 35),elevation: 0,backgroundColor: Colors.white),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child:
          Column(
            children: [

              Image.asset(
                "assets/images/dilevery_logo.png",
                width: 250,
                height: 250,
              ),
              Text("WELCOME TO HOME SCREEN",style: TextStyle(fontSize: 20,color: Colors.black,)),




            ],
          ),
        ),
      ),
    );
  }
}
