// ignore: file_names
import 'package:flutter/material.dart';
import 'package:medicalapp/pages/Home.dart';
import 'package:medicalapp/pages/Sechedule.dart';
import 'package:medicalapp/pages/Settings.dart';
import 'package:medicalapp/pages/messsages.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  PageController controller = PageController();
  final screens = <Widget>[
    const Home(),
    const Messsages(),
    const Sechedule(),
    const Settings()
  ];
  int indexx = 0;
  @override
  void initState() {
    controller;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[indexx],
      bottomNavigationBar: NavigationBar(
        selectedIndex: indexx,
        onDestinationSelected: (value) {
          setState(() {
            indexx = value;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.message),
            label: 'messages',
          ),
          NavigationDestination(
            icon: Icon(Icons.date_range),
            label: 'Sechedule',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'Settings',
          )
        ],
      ),
    );
  }
}
