import 'package:flutter/material.dart';
import 'package:medicalapp/pages/Homepage.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/doctors.png'),
          const SizedBox(
            height: 55,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Enter UserName',
                    prefixIcon: Icon(Icons.person),
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 3)))),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: 'Enter Password',
                    prefixIcon: Icon(Icons.lock),
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 3)))),
          ),
          const SizedBox(
            height: 30,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Homepage(),
              ));
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(8)),
              child: const Center(
                  child: Text(
                'Log In',
                style: TextStyle(fontSize: 24, color: Colors.white),
              )),
            ),
          )
        ],
      ),
    );
  }
}
