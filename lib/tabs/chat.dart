import 'package:flutter/Material.dart';
import 'package:whatsapp_ui/model/chat_model.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chatsData.length,
        itemBuilder: (context, i) => Column(
          children: <Widget>[
            const Divider(height: 0.1),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(chatsData[i].pic),
              ),
              title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      chatsData[i].name,
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      chatsData[i].time,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                  ]),
              subtitle: Text(
                chatsData[i].msg,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.message),
          backgroundColor: Color.fromARGB(255, 3, 58, 5),
          onPressed: () {}),
    );
  }
}
