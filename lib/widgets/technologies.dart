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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Technologies I have worked with ",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 0.013 * w,
              color: Colors.black),
        ),
        SizedBox(height: 0.015 * h),
        SizedBox(
          width: 0.8 * w,
          child: Wrap(
            children: [
              myContainer(
                imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWiWY0E_du9TYa4Nd-XDhDJNjUrU6r6h31JQ&s",
                text: "Flutter",
              ),
              myContainer(
                imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzzPL5MeLqdbE7bDka2QS8elhd8gn0L_h3Ug&s",
                text: "Dart",
              ),
              myContainer(
                imageUrl:
                    "https://www.gstatic.com/devrel-devsite/prod/v5ab6fd0ad9c"
                    "02b131b4d387b5751ac2c3616478c6dd65b5e931f0805efa1009c/firebase/images/touchicon-180.png",
                text: "Firebase",
              ),
              myContainer(
                imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoUX5LMRa7atIsNfl0nP3DaUaV4URhV0PHfA&s",
                text: "Figma",
              ),
              myContainer(
                imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJdaXebcZLrbFGKeWoxVA1cJFrahC1Sk19qw&s",
                text: "Postman",
              ),
              myContainer(
                imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvlqpLJ2KjYNTPSX0HtTeX4aEmKaiJeiBPYA&s",
                text: "Git",
              ),
              myContainer(
                imageUrl:
                    "https://spin.atomicobject.com/wp-content/uploads/Android.png",
                text: "Android",
              ),
              myContainer(
                imageUrl: "https://upload.wikimedia.org/wikipe"
                    "dia/commons/thumb/9/9a/Visual_Studio_Code_1.35_icon.svg/2048px-Visual_Studio_Code_1.35_icon.svg.png",
                text: "Visual Studio",
              ),
              myContainer(
                imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTudS2exfMJpOoaTT7PG83hIgeXRCsViLvHog&s",
                text: "Windows",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget myContainer({
    required String imageUrl,
    required String text,
  }) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0.005 * h, horizontal: 0.003 * w),
      width: 0.1 * w,
      height: 0.065 * h,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(0.003 * w),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 0.005 * w),
          Image.network(
            imageUrl,
            width: 0.025 * w,
            height: 0.05 * h,
            fit: BoxFit.fill,
          ),
          SizedBox(width: 0.01 * w),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 0.013 * w,
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
