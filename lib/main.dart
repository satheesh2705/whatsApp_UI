import 'package:flutter/Material.dart';

import 'home_page.dart';
import 'call_data.dart';
import 'status_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      home: const HomePage(),
    );
  }
}
