import 'package:flutter/material.dart';

class Upcomingsechedule extends StatelessWidget {
  const Upcomingsechedule({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'About Doctor',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                //  margin: EdgeInsets.all(5),
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12, blurRadius: 4, spreadRadius: 2)
                    ]),

                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const Column(
                    children: [
                      ListTile(
                        title: Text(
                          'Dr.Dr Name',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('theripst'),
                        trailing: CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('assets/images/doctor3.jpg'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Divider(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              children: [
                                Icon(Icons.date_range),
                                Text('12/01/2023'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              children: [
                                Icon(Icons.punch_clock),
                                Text('10,30'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              children: [
                                Icon(Icons.date_range),
                                Text('Confirmed'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
