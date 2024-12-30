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
*/
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

