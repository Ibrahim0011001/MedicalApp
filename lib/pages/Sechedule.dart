import 'package:flutter/material.dart';
import 'package:medicalapp/widget/upcoming_sechedule.dart';

class Sechedule extends StatefulWidget {
  const Sechedule({super.key});

  @override
  State<Sechedule> createState() => _SecheduleState();
}

class _SecheduleState extends State<Sechedule> {
  int _index = 0;
  final List _sechedulewidget = [
    const Upcomingsechedule(),
    const Center(
      child: Text(''),
    ),
    const Center(
      child: Text(''),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Schedule',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 4, spreadRadius: 2, color: Colors.black12)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _index = 0;
                    });
                  },
                  child: Container(
                      color: _index == 0
                          ? const Color.fromRGBO(126, 87, 194, 1)
                          : Colors.transparent,
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 20),
                      child: const Text(
                        'Upcoming',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _index = 1;
                    });
                  },
                  child: Container(
                      color: _index == 1
                          ? const Color.fromRGBO(126, 87, 194, 1)
                          : Colors.transparent,
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 20),
                      child: const Text(
                        'Completed',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _index = 2;
                    });
                  },
                  child: Container(
                      color: _index == 2
                          ? const Color.fromRGBO(126, 87, 194, 1)
                          : Colors.transparent,
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 20),
                      child: const Text(
                        'Canceled',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 1000,
            child: ListView.builder(
              itemCount: 6,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return _sechedulewidget[_index];
              },
            ),
          )
        ]),
      ),
    );
  }
}
