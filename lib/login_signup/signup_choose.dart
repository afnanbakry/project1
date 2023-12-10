import 'package:flutter/material.dart';
import 'package:project1/layout/layout.dart';

class SignUpChoose extends StatelessWidget {
 bool? isDriver ;

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
                "assets/images/img.png",
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
                      "Choose Your Role:",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    SizedBox(
                      height: 40,
                    ),

                    Container(
                      width: 260,
                      height: 60,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        color: Colors.orange,
                        onPressed: () {
                          isDriver = false ;
                          
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LayoutScreen(isDriver!)));
                          },
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
                        onPressed: () {
                          isDriver = true ;
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LayoutScreen(isDriver!),),);},
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
