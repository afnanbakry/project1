
import 'package:flutter/material.dart';

class TrackingScreen extends StatelessWidget {
  const TrackingScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,elevation: 0
        ,iconTheme: IconThemeData(color: Colors.orange,size: 35),title: Text("Order Track"),),
      backgroundColor: Colors.white,
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(21.0),
            child: Container(
              width: 350,
              height: 333,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.grey),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height:32,
                        ),
                        Icon(Icons.person,color: Colors.orange,),
                        SizedBox(
                          height:35,
                        ),
                        CircleAvatar(
                          radius: 7,
                          backgroundColor: Colors.orange,
                        ),
                        Container(
                          height: 27,
                          color: Colors.orange,
                          width: 4,
                        ),
                        Icon(Icons.location_on,color: Colors.orange,),
                        SizedBox(height: 10,),
                        Icon(Icons.phone,color: Colors.orange),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 300,
                      height: 700,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 30,),
                          Row(children: [
                            Text('Mohammed saleh',
                                style: TextStyle(fontSize: 20)),

                          ]),
                          Divider(color: Colors.orangeAccent,thickness: 3,endIndent: 25),

                          SizedBox(
                            height: 3,
                          ),
                          Text('Benziena Mobile ',
                              style: TextStyle(fontSize: 25)),
                          SizedBox(
                            height: 3,
                          ),
                          Text('Bus Station ',
                              style: TextStyle(fontSize: 25)),
                          SizedBox(
                            height: 3,
                          ),
                          const Text('0123456789',
                              style: TextStyle(
                                fontSize: 25,
                              )),

                          Divider(color: Colors.orangeAccent,thickness: 3,endIndent: 25),
                          const Row(children: [
                            Text('20\$',
                                style: TextStyle(fontSize: 25)),
                            Spacer(),
                            Text('Waiting...',
                                style: TextStyle(
                                  fontSize: 25,color: Colors.orange,
                                )),

                          ]),
                          Center(child: ElevatedButton(
                            style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.orange)),
                            onPressed: (){},
                            
                            child: const Text("Order Received",style: TextStyle(color: Colors.white),),
                          ))

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
