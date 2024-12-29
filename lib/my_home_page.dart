import 'package:flutter/material.dart';
import 'package:web_app/widgets/portfolio.dart';
import 'package:web_app/widgets/technologies.dart';
import 'package:web_app/widgets/to_communicate.dart';
import 'package:web_app/widgets/top_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return MaterialApp(debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("My Portfolio"),
            actions: [
              IconButton(
                icon: Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode),
                onPressed: () {
                  setState(() {
                    isDarkMode = !isDarkMode;
                  });
                },
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const TopScreen(),
                SizedBox(height: 0.04 * h),
                const ToCommunicate(),
                SizedBox(height: 0.015 * h),
                const Technologies(),
                SizedBox(height: 0.035 * h),
                const Portfolio(),                SizedBox(height: 0.3 * h),

              ],
            ),
          ),
        ));
  }
}
