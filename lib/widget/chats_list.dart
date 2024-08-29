import 'package:flutter/material.dart';

class ChatsList extends StatelessWidget {
  const ChatsList({
    super.key,
    required this.images,
  });

  final List images;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {},
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(images[index]),
              ),
              title: const Text(
                'Dr.Doctor Name',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              subtitle: const Text('hello doctor are you there?'),
              trailing: const Text(
                '12:30',
                style: TextStyle(color: Colors.black54, fontSize: 14),
              ),
            ),
          ),
        );
      },
    );
  }
}
