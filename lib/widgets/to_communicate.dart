import 'package:flutter/material.dart';

class ToCommunicate extends StatefulWidget {
  const ToCommunicate({super.key});

  @override
  State<ToCommunicate> createState() => _ToCommunicateState();
}

class _ToCommunicateState extends State<ToCommunicate> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    final textColor = Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black;
    final accentColor = Theme.of(context).primaryColor;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 0.01 * w,
            ),
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST9paQ3SkZUSnO1mriWMlOw60NEMTXGhyVtA&s",
              width: 0.035 * w,
            ),
            SizedBox(
              width: 0.01 * w,
            ),
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST9paQ3SkZUSnO1mriWMlOw60NEMTXGhyVtA&s",
              width: 0.035 * w,
            ),
            SizedBox(
              width: 0.01 * w,
            ),
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST9paQ3SkZUSnO1mriWMlOw60NEMTXGhyVtA&s",
              width: 0.035 * w,
            ),
            SizedBox(
              width: 0.01 * w,
            ),
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST9paQ3SkZUSnO1mriWMlOw60NEMTXGhyVtA&s",
              width: 0.035 * w,
            ),
            SizedBox(
              width: 0.01 * w,
            ),
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST9paQ3SkZUSnO1mriWMlOw60NEMTXGhyVtA&s",
              width: 0.035 * w,
            ),
            SizedBox(
              width: 0.01 * w,
            ),
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST9paQ3SkZUSnO1mriWMlOw60NEMTXGhyVtA&s",
              width: 0.035 * w,
            ),
            SizedBox(
              width: 0.01 * w,
            ),
          ],
        ),
        SizedBox(
          height: 0.01 * h,
        ),
        Text(
          "I'm Mahmoud Ali , A Flutter Developer ",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 0.017 * w,
              color: textColor),
        ),
        SizedBox(
          height: 0.01 * h,
        ),
        Text(
          "I have graduated from faculty of engineering in 2024 . I have been developing Flutter Apps for 6 months",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 0.02 * w,
              color: accentColor),
        ),
      ],
    );
  }
}
