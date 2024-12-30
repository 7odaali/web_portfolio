/*
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
  void initState() {
    super.initState();
    _loadThemePreference();
  }

  Future<void> _loadThemePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isDarkMode = prefs.getBool('isDarkMode') ?? false;
    });
  }

  Future<void> _saveThemePreference(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', value);
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
        home: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.05 * w),
              child: SafeArea(
                child: Column(
                  children: [
                    SizedBox(height: 0.01 * h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Transform.scale(
                          scale: 0.8,
                          child: Switch(
                            activeColor: Colors.cyan,
                            value: isDarkMode,
                            onChanged: (value) {
                              setState(() {
                                isDarkMode = value;
                              });
                              _saveThemePreference(value);
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 0.03 * h),
                    const TopScreen(),
                    SizedBox(height: 0.04 * h),
                    const ToCommunicate(),
                    SizedBox(height: 0.015 * h),
                    const Technologies(),
                    SizedBox(height: 0.035 * h),
                    const Portfolio(),
                    SizedBox(height: 0.1 * h),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
*/ /*

import 'package:flutter/material.dart';
import 'package:web_app/widgets/portfolio.dart';
import 'package:web_app/widgets/technologies.dart';
import 'package:web_app/widgets/to_communicate.dart';
import 'package:web_app/widgets/top_screen.dart';

class MyHomePage extends StatelessWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onThemeChanged;

  const MyHomePage({
    super.key,
    required this.isDarkMode,
    required this.onThemeChanged,
  });

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.05 * w),
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 0.01 * h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Transform.scale(
                      scale: 0.8,
                      child: Switch(
                        activeColor: Colors.cyan,
                        value: isDarkMode,
                        onChanged: onThemeChanged,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 0.03 * h),
                const TopScreen(),
                SizedBox(height: 0.04 * h),
                const ToCommunicate(),
                SizedBox(height: 0.015 * h),
                const Technologies(),
                SizedBox(height: 0.035 * h),
                const Portfolio(),
                SizedBox(height: 0.1 * h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

*/
import 'package:flutter/material.dart';
import 'package:web_app/widgets/portfolio.dart';
import 'package:web_app/widgets/technologies.dart';
import 'package:web_app/widgets/to_communicate.dart';
import 'package:web_app/widgets/top_screen.dart';

class MyHomePage extends StatefulWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onThemeChanged;

  const MyHomePage({
    super.key,
    required this.isDarkMode,
    required this.onThemeChanged,
  });

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScrollController _scrollController = ScrollController();

  void _scrollToPortfolio() {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;

    double targetHeight;

    if (screenWidth > 1000) {
      targetHeight = 0.7 * screenHeight;
    } else if (screenWidth > 800) {
      targetHeight = 0.58 * screenHeight;
    } else if (screenWidth > 700) {
      targetHeight = 0.6 * screenHeight;
    } else if (screenWidth > 600) {
      targetHeight = 0.57 * screenHeight;
    } else {
      targetHeight = 0.52 * screenHeight;
    }

    _scrollController.animateTo(
      targetHeight,
      duration: const Duration(milliseconds: 1000),
      curve: Curves.easeInOut,
    );
  }

  void _scrollToTopScreen() {
    _scrollController.animateTo(
      0.0,
      duration: const Duration(milliseconds: 1000),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;

    return Scaffold(
      appBar: AppBar(
        actions: [
          if (w < 600)
            PopupMenuButton<String>(
              onSelected: (value) {
                if (value == 'Portfolio') {
                  _scrollToPortfolio();
                } else if (value == 'Home') {
                  _scrollToTopScreen();
                } else if (value == 'SwitchTheme') {
                  widget.onThemeChanged(!widget.isDarkMode);
                }
              },
              itemBuilder: (BuildContext context) => [
                PopupMenuItem<String>(
                  value: 'Portfolio',
                  child: Text(
                    'Portfolio',
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyLarge?.color ??
                          Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 0.015 * w,
                    ),
                  ),
                ),
                PopupMenuItem<String>(
                  value: 'Home',
                  child: Text(
                    'Home',
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyLarge?.color ??
                          Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 0.015 * w,
                    ),
                  ),
                ),
                PopupMenuItem<String>(
                  value: 'SwitchTheme',
                  child: Row(
                    children: [
                      Text(
                        'Switch Theme',
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyLarge?.color ??
                              Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 0.015 * w,
                        ),
                      ),
                      Transform.scale(
                        scale: 0.8,
                        child: Switch(
                          activeColor: Colors.cyan,
                          value: widget.isDarkMode,
                          onChanged: widget.onThemeChanged,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          else ...[
            TextButton(
              onPressed: _scrollToPortfolio,
              child: Text(
                'Portfolio',
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge?.color ??
                      Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 0.015 * w,
                ),
              ),
            ),
            TextButton(
              onPressed: _scrollToTopScreen,
              child: Text(
                'Home',
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge?.color ??
                      Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 0.015 * w,
                ),
              ),
            ),
            Transform.scale(
              scale: 0.8,
              child: Switch(
                activeColor: Colors.cyan,
                value: widget.isDarkMode,
                onChanged: widget.onThemeChanged,
              ),
            ),
          ],
        ],
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.05 * w),
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 0.03 * h),
                const TopScreen(),
                SizedBox(height: 0.04 * h),
                const ToCommunicate(),
                SizedBox(height: 0.015 * h),
                const Technologies(),
                SizedBox(height: 0.035 * h),
                const Portfolio(),
                SizedBox(height: 0.1 * h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
