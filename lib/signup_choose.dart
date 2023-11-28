import 'package:flutter/material.dart';
import 'package:project1/home_screen.dart';
import 'package:project1/signupcustomer_screen.dart';
import 'package:project1/signupdilevery.dart';

class SignUpChoose extends StatelessWidget {
  const SignUpChoose({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(backgroundColor: Colors.white,iconTheme: IconThemeData(color: Colors.orange,size: 35),elevation: 0),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [

              Image.asset(
                "assets/images/dilevery_logo.png",
                width: 300,
                height: 300,
              ),
              Container(
                width: 340,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      "ARE YOU CUSTOMER OR DRIVER?",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 50,
                    ),

                    Container(
                      width: 260,
                      height: 60,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        color: Colors.orange,
                        onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpCustomer(),));},
                        child: Text("Customer",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30)),
                      ),
                    ),

                    SizedBox(
                      height: 22,
                    ),
                    Container(
                      width: 260,
                      height: 60,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        color: Colors.orange,
                        onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpDilevery(),));},
                        child: Text("Driver",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30)),
                      ),
                    ),


                        ],
                      ),
                    ),
                  ],
                ),
              )

          ),



    );
  }
}
