
import 'package:flutter/material.dart';

class Technologies extends StatefulWidget {
  const Technologies({super.key});

  @override
  State<Technologies> createState() => _TechnologiesState();
}

class _TechnologiesState extends State<Technologies> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;

    int columns = (w > 1200)
        ? 7
        : (w > 800)
            ? 6
            : (w > 600)
                ? 5
                : (w > 400)
                    ? 4
                    : 2;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Technologies I have worked with",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 0.017 * w,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 0.015 * h),
        LayoutBuilder(
          builder: (context, constraints) {
            return Wrap(
              spacing: 0.01 * w,
              runSpacing: 0.01 * h,
              children: [
                myContainer(
                  imageUrl:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWiWY0E_du9TYa4Nd-XDhDJNjUrU6r6h31JQ&s",
                  text: "Flutter",
                  width: w / columns - 0.02 * w,
                ),
                myContainer(
                  imageUrl:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzzPL5MeLqdbE7bDka2QS8elhd8gn0L_h3Ug&s",
                  text: "Dart",
                  width: w / columns - 0.02 * w,
                ),
                myContainer(
                  imageUrl:
                      "https://www.gstatic.com/devrel-devsite/prod/v5ab6fd0ad9c"
                      "02b131b4d387b5751ac2c3616478c6dd65b5e931f0805efa1009c/firebase/images/touchicon-180.png",
                  text: "Firebase",
                  width: w / columns - 0.02 * w,
                ),
                myContainer(
                  imageUrl:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoUX5LMRa7atIsNfl0nP3DaUaV4URhV0PHfA&s",
                  text: "Figma",
                  width: w / columns - 0.02 * w,
                ),
                myContainer(
                  imageUrl:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJdaXebcZLrbFGKeWoxVA1cJFrahC1Sk19qw&s",
                  text: "Postman",
                  width: w / columns - 0.02 * w,
                ),
                myContainer(
                  imageUrl:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvlqpLJ2KjYNTPSX0HtTeX4aEmKaiJeiBPYA&s",
                  text: "Git",
                  width: w / columns - 0.02 * w,
                ),
                myContainer(
                  imageUrl:
                      "https://spin.atomicobject.com/wp-content/uploads/Android.png",
                  text: "Android",
                  width: w / columns - 0.02 * w,
                ),
                myContainer(
                  imageUrl: "https://upload.wikimedia.org/wikipe"
                      "dia/commons/thumb/9/9a/Visual_Studio_Code_1.35_icon.svg/2048px-Visual_Studio_Code_1.35_icon.svg.png",
                  text: "Visual Studio",
                  width: w / columns - 0.02 * w,
                ),
                myContainer(
                  imageUrl:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTudS2exfMJpOoaTT7PG83hIgeXRCsViLvHog&s",
                  text: "Windows",
                  width: w / columns - 0.02 * w,
                ),
              ],
            );
          },
        ),
      ],
    );
  }

  Widget myContainer({
    required String imageUrl,
    required String text,
    required double width,
  }) {
    double h = MediaQuery.sizeOf(context).height;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0.005 * h),
      width: width,
      height: 0.065 * h,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          SizedBox(width: 0.05 * width),
          Image.network(
            imageUrl,
            width: 0.2 * width,
            height: 0.05 * h,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 0.1 * width),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 0.1 * width,
                color: Colors.black,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
