import 'package:flutter/material.dart';
import 'package:project1/screens/track_location.dart';
import 'package:project1/screens/tracking_screen.dart';

class DeliveryHome extends StatelessWidget {
  const DeliveryHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(        centerTitle: true,

  title: Text("My Requests"),
),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(21.0),
        child: Column(children: [
          Expanded(
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) => Container(
                      width: 340,
                      height: 255,
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

                                const SizedBox(
                                  height:22,
                                ),
                                const CircleAvatar(
                                  radius: 7,
                                  backgroundColor: Colors.orange,
                                ),
                                Container(
                                  height: 30,
                                  color: Colors.orange,
                                  width: 4,
                                ),

                                Icon(Icons.location_on,color: Colors.orange,),
                                SizedBox(height: 12,),
                                Icon(Icons.phone,color: Colors.orange),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 300,
                              height: 221,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  const SizedBox(
                                    height: 3,
                                  ),
                                  const Text('Benziena Mobile ',
                                      style: TextStyle(fontSize: 25)),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  const Text('Bus Station ',
                                      style: TextStyle(fontSize: 25)),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  const Text('0123456789',
                                      style: TextStyle(
                                        fontSize: 25,
                                      )),
                                  const Divider(color: Colors.orangeAccent,thickness: 3,endIndent: 25),
                                  Row(children: [
                                    const Text('20\$',
                                        style: TextStyle(fontSize: 25)),
                                    Spacer(),
                                    Container(
                                      width: 110,
                                      height: 40,
                                      child: MaterialButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(18)),
                                        color: Colors.orange,
                                        onPressed: () {
                                         {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) =>HomeScreen(),));
                                          }
                                        },
                                        child: Text("Accept",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 22)),
                                      ),
                                    ),
                                  ])
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      height: 15,
                    ),
                itemCount: 10),
          )
        ]),
      )),
    );
  }
}
