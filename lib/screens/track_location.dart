import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

import 'orderreceivedscreen.dart';

class TrackingLocationScreen extends StatefulWidget {
  const TrackingLocationScreen({Key? key}) : super(key: key);

  @override
  State<TrackingLocationScreen> createState() => _TrackingLocationScreenState();
}

class _TrackingLocationScreenState extends State<TrackingLocationScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  @override
  void initState() {
    super.initState();
    getUserLocation();
  }

  CameraPosition? myLocation;
  int index = 0;
  Set<Marker> markers = {};
  static const CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(37.43296265331129, -122.08832357078792),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 493,
            child: myLocation == null
                ? const Center(child: CircularProgressIndicator())
                : GoogleMap(
                    mapType: MapType.hybrid,
                    onTap: (argument) {
                      setState(() {});
                      index++;

                      markers.add(
                        Marker(
                          markerId: MarkerId("myLocation$index"),
                          position: argument,
                        ),
                      );
                    },
                    markers: markers,
                    initialCameraPosition: myLocation!,
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                    },
                  ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const SizedBox(
                            height: 11,
                          ),
                          const Icon(
                            Icons.person,
                            color: Colors.orange,
                          ),
                          SizedBox(
                            height: 25,
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
                          Icon(
                            Icons.location_on,
                            color: Colors.orange,
                          ),
                          Icon(Icons.phone, color: Colors.orange),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 300,
                        height: 600,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(children: [
                              Text('Mohammed saleh',
                                  style: TextStyle(fontSize: 17)),
                            ]),
                            Divider(
                              color: Colors.orangeAccent,
                              thickness: 1.5,
                              endIndent: 25,
                            ),
                            Text('Benziena Mobile ',
                                style: TextStyle(fontSize: 18)),
                            SizedBox(
                              height: 3,
                            ),
                            Text('Bus Station ',
                                style: TextStyle(fontSize: 18)),
                            const Text('0123456789',
                                style: TextStyle(
                                  fontSize: 18,
                                )),
                            Divider(
                              color: Colors.orangeAccent,
                              thickness: 1.5,
                              endIndent: 25,
                            ),
                            Row(
                              children: [
                                Text('20\$', style: TextStyle(fontSize: 18)),

                              ],
                            ),
                            Center(
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.orange),
                                ),
                                onPressed: () {
                                  // Navigate to the OrderReceivedScreen with a simple animation
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      transitionDuration:
                                          Duration(milliseconds: 500),
                                      pageBuilder: (_, __, ___) =>
                                          OrderReceivedScreen(),
                                      transitionsBuilder:
                                          (_, animation, __, child) {
                                        return FadeTransition(
                                          opacity: animation,
                                          child: child,
                                        );
                                      },
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Order Received",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Location location = Location();

  StreamSubscription<LocationData>? subscription;

  LocationData? locationData;

  PermissionStatus status = PermissionStatus.denied;

  bool isServiceEnabled = false;

  Future<bool> checkPermission() async {
    status = await location.hasPermission();
    if (status == PermissionStatus.denied) {
      status = await location.requestPermission();
    }
    return (status == PermissionStatus.granted ||
        status == PermissionStatus.grantedLimited);
  }

  Future<bool> checkService() async {
    isServiceEnabled = await location.serviceEnabled();
    if (!isServiceEnabled) {
      isServiceEnabled = await location.requestService();
    }
    return isServiceEnabled;
  }

  getUserLocation() async {
    bool permission = await checkPermission();
    bool service = await checkService();

    if (!permission) return;
    if (!service) return;

    locationData = await location.getLocation();
    location.changeSettings(accuracy: LocationAccuracy.high);
    subscription = location.onLocationChanged.listen((event) {
      locationData = event;
      markers.add(
        Marker(
          markerId: MarkerId('myLocation'),
          position: LatLng(event.latitude!, event.longitude!),
        ),
      );
      myLocation = CameraPosition(
        target: LatLng(event.latitude!, event.longitude!),
        zoom: 14.4746,
      );
      setState(() {});
    });

    print("lat: ${locationData?.latitude} , long: ${locationData?.longitude}");
  }

  @override
  void dispose() {
    super.dispose();
    subscription?.cancel();
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
