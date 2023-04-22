import 'package:flutter/material.dart';
import 'package:whatsapp_ui/tabs/camera.dart';
import 'tabs/call.dart';
import 'tabs/camera.dart';
import 'tabs/chat.dart';
import 'tabs/status.dart';

import 'tabs/call.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var initialIndex = "";
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          leading: const Text('WhatsApp'),
          actions: [
            IconButton(
              icon: Icon(Icons.more_vert),
              iconSize: 22,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              iconSize: 22,
              onPressed: () {},
            )
          ],
          backgroundColor: Color.fromARGB(255, 4, 54, 6),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Camera(),
            Status(),
            Chat(),
            Call(),
          ],
        ),
      ),
    );
  }
}
