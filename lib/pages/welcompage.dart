import 'package:flutter/material.dart';
import 'package:medicalapp/pages/Homepage.dart';
import 'package:medicalapp/pages/LoginPage.dart';

class Welcompage extends StatefulWidget {
  const Welcompage({super.key});

  @override
  State<Welcompage> createState() => _WelcompageState();
}

class _WelcompageState extends State<Welcompage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.all(15)),
          Align(
            alignment: Alignment.topRight,
            child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Homepage(),
                  ));
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(fontSize: 29),
                )),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 55),
              child: Image.asset('assets/images/doctors.png')),
          Text(
            'Doctors Appointment',
            style: TextStyle(fontSize: 37, color: Colors.blue[900]),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Appoint your doctor',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Loginpage(),
                  ));
                },
                child: const SizedBox(
                  width: 70,
                  height: 70,
                  child: Center(
                      child: Text(
                    'Log In',
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  )),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const SizedBox(
                  width: 70,
                  height: 70,
                  child: Center(
                      child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  )),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
