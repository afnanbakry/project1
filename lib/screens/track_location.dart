import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      zoom: 19.151926040649414);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myLocation == null
          ? const Center(child: CircularProgressIndicator())
          : GoogleMap(
              mapType: MapType.hybrid,
              onTap: (argument) {
                setState(() {});
                index++;

                markers.add(
                  Marker(
                      markerId: MarkerId("myLocation$index"),
                      position: argument),
                );
              },
              markers: markers,
              initialCameraPosition: myLocation!,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: const Text('To the lake!'),
        icon: const Icon(Icons.directions_boat),
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
//AIzaSyBioWgovcL1z23wwzZbidIx53mhIg_Kx60
