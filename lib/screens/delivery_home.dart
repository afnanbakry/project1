import 'package:flutter/material.dart';

class DeliveryHome extends StatelessWidget {
  const DeliveryHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     title: Padding(
      //       padding: const EdgeInsets.all(5.0),
      //     ),
      //     leading: Padding(
      //       padding: const EdgeInsets.all(6.0),
      //       child: Container(
      //         decoration: BoxDecoration(
      //           shape: BoxShape.circle,
      //           image: DecorationImage(
      //             image: AssetImage("assets/images/img.png"),
      //           ),
      //         ),
      //       ),
      //     ),
      //     backgroundColor: Colors.orange,
      //     elevation: 0,
      //     iconTheme: IconThemeData(color: Colors.white, size: 35),
      //     actions: [
      //       Icon(
      //         Icons.menu,
      //       ),
      //       SizedBox(
      //         width: 8,
      //       ),
      //       //onPressed: () {},
      //     ]),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(21.0),
        child: Column(children: [
          Expanded(
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) => Container(
                      width: 340,
                      height: 230,
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
                                  height:55,
                                ),
                                CircleAvatar(
                                  radius: 7,
                                  backgroundColor: Colors.orange,
                                ),
                                Container(
                                  height: 20,
                                  color: Colors.orange,
                                  width: 4,
                                ),
                                CircleAvatar(
                                  radius: 7,
                                  backgroundColor: Colors.orange,
                                ),
                                SizedBox(height: 10,),
                                Icon(Icons.phone,color: Colors.orange),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 300,
                              height: 185,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.directions_car_rounded,color: Colors.grey),
                                          Text('car',
                                              style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.grey,
                                              )),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.directions_run,color: Colors.orange),
                                          Text('courier',
                                              style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.orange,
                                              )),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.local_shipping,color: Colors.grey),
                                          Text('truck',
                                              style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.grey,
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
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
                                  Text('0123456789',
                                      style: TextStyle(
                                        fontSize: 25,
                                      )),
                                  Divider(color: Colors.orangeAccent,thickness: 3,endIndent: 25),
                                  Row(children: [
                                    Text('20\$',
                                        style: TextStyle(fontSize: 25)),
                                    Spacer(),
                                    Text("Accept",
                                        style: TextStyle(
                                            color: Colors.orange,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25)),
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
