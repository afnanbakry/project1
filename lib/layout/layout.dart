import 'package:flutter/material.dart';
import 'package:project1/screens/chat_screen.dart';
import 'package:project1/screens/delivery_home.dart';
import 'package:project1/screens/setting.dart';
import '../screens/new_order.dart';

class LayoutScreen extends StatefulWidget {
  static const String routeName = 'layout';
  final bool isDriver;

  LayoutScreen(this.isDriver);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int currentIndex = 0;

    List<BottomNavigationBarItem>? bottomsNavBar;

  List<Widget>? screens;

  @override
  void initState() {
    super.initState();

    bottomsNavBar = [
      widget.isDriver
          ? const BottomNavigationBarItem(
        icon: Icon(Icons.square_outlined),
        label: "Orders",
      )
          : const BottomNavigationBarItem(
        icon: Icon(Icons.add),
        label: "New_Order",
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.chat),
        label: "Chat",
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: "Setting",
      ),
    ];

    screens = [
      widget.isDriver ? DeliveryHome() : NewOrder(),
      ChatsScreen(),
      SettingScreen(),
    ];
  }

  void changeBottomScreen(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: bottomsNavBar!,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (value) {
          changeBottomScreen(value);
        },
      ),
      body: screens?[currentIndex],
    );
  }
}
