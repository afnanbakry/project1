import 'package:flutter/material.dart';
import 'package:project1/screens/tracking_screen.dart';

class NewOrder extends StatelessWidget {
  const NewOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Creat a new order',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Delivery method :',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.grey[350],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Icon(Icons.directions_run),
                            Text(
                              'Courier',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Up to 10 kg',
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.grey[350],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Icon(Icons.directions_car_rounded),
                            Text(
                              'Car',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Up to 60 kg',
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.grey[350],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Icon(Icons.local_shipping),
                            Text(
                              'Truck',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '> 60 kg',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'From',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Address',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 49,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'City',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(23)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 49,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Street',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(23)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 49,
                        width: MediaQuery.of(context).size.width / 2.1,
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'House',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(23)),
                          ),
                        ),
                      ),
                      Container(
                        height: 49,
                        width: MediaQuery.of(context).size.width / 2.1,
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Flat',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(23)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Contact details',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 49,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(23)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 49,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Phone',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(23)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 49,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Address information',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(23)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'To',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Address',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 49,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'City',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(23)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 49,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Street',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(23)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 49,
                        width: MediaQuery.of(context).size.width / 2.1,
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'House',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(23)),
                          ),
                        ),
                      ),
                      Container(
                        height: 49,
                        width: MediaQuery.of(context).size.width / 2.1,
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Flat',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(23)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Contact details',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 49,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(23)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 49,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Phone',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(23)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 49,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Address information',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(23)),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 260,
                      height: 40,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)),
                        color: Colors.orange,
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => TrackingScreen(),));},
                        child: Text("Create Order",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22)),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}