// ignore: file_names
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 40,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Settings',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/doctor3.jpg'),
          ),
          title: Text(
            'Dr.Doctor Name',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          subtitle: Text('Profile'),
        ),
        const SizedBox(
          height: 20,
        ),
        const Divider(),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.lightBlue[100],
                  child: const Icon(Icons.person),
                ),
                title: const Text(
                  'Profile',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                trailing: const Icon(Icons.arrow_forward),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.deepPurpleAccent[100],
                  child: const Icon(Icons.notifications),
                ),
                title: const Text(
                  'Notification',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                trailing: const Icon(Icons.arrow_forward),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blueGrey[100],
                  child: const Icon(Icons.privacy_tip),
                ),
                title: const Text(
                  'Privacy',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                trailing: const Icon(Icons.arrow_forward),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(14.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.greenAccent,
                  child: Icon(Icons.settings),
                ),
                title: Text(
                  'General',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.orange.withOpacity(.4),
                  child: const Icon(Icons.warning),
                ),
                title: const Text(
                  'About Us',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                trailing: const Icon(Icons.arrow_forward),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
