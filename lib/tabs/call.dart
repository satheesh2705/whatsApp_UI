import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsapp_ui/call_data.dart';

class Call extends StatelessWidget {
  const Call({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: callData.length,
        itemBuilder: (context, i) => Column(
          children: <Widget>[
            Divider(
              height: 0.1,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(callData[i].pic),
              ),
              trailing: Icon(
                i % 2 == 0 ? Icons.call : Icons.videocam,
                color: Color.fromARGB(255, 6, 58, 8),
              ),
              title: Row(children: <Widget>[
                Text(
                  callData[i].name,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ]),
              subtitle: Row(children: <Widget>[
                Text(
                  callData[i].time,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ]),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_call),
        backgroundColor: Color.fromARGB(255, 3, 59, 5),
        onPressed: () {},
      ),
    );
  }
}
