import 'package:flutter/material.dart';

class Camera extends StatelessWidget {
  const Camera({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        child: Row(
          children: <Widget>[
            Image(
              image: NetworkImage(
                'https://randomuser.me/api/portraits/men/8.jpg',
              ),
              height: 1850,
              width: 180,
            ),
            Image(
              image: NetworkImage(
                  'https://randomuser.me/api/portraits/women/8.jpg'),
              height: 180,
              width: 180,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 3, 68, 5),
        child: const Icon(Icons.camera_alt),
        onPressed: () {},
      ),
    );
  }
}
