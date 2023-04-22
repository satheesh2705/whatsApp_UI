import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsapp_ui/status_data.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(children: <Widget>[
            Expanded(
              child: ListTile(
                leading: Container(
                  width: 50.0,
                  child: Stack(
                    children: <Widget>[
                      ClipOval(
                        child: Image.network(
                          'https://randomuser.me/api/portraits/men/3.jpg',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Color.fromARGB(255, 6, 73, 8),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                title: Text(
                  'My Status',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Tab to add Status Update'),
              ),
            ),
          ]),

          ///
          SizedBox(
            height: 30,
            child: Container(
              width: double.infinity,
              color: Colors.grey.shade200,
              child: Text(
                '        Recently Update',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, i) => Column(
                children: <Widget>[
                  SizedBox(
                    height: 0.2,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(statusData[i].pic),
                    ),
                    title: Row(children: <Widget>[
                      Text(
                        statusData[i].name,
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ]),
                    subtitle: Row(children: <Widget>[
                      Text(
                        statusData[i].time,
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.edit),
            backgroundColor: Color.fromARGB(255, 3, 59, 5),
            onPressed: () {},
          ),
          const SizedBox(
            height: 5,
          ),
          FloatingActionButton(
            child: const Icon(Icons.camera_alt_outlined),
            backgroundColor: Color.fromARGB(255, 3, 59, 5),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
