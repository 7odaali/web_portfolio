import 'package:flutter/material.dart';
import 'package:web_app/widgets/top_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TopScreen(),
        ],
      ),
    );
  }
}
