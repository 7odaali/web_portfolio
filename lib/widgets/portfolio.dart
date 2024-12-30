import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;

    /* int columns = (w > 1200)
        ? 4
        : (w > 700)
            ? 3
            : (w > 500)
                ? 3
                : (w > 400)
                    ? 2
                    : 1;

    double itemHeight = (columns == 4)
        ? 0.52 * h
        : (columns == 3)
            ? 0.42 * h
            : (columns == 2)
                ? 0.28 * h
                : 0.3 * h;*/
    int columns = (w >= 1000)
        ? 3
        : (w >= 900)
            ? 3
            : (w >= 800)
                ? 2
                : (w >= 700)
                    ? 2
                    : (w >= 600)
                        ? 2
                        : (w >= 500)
                            ? 2
                            : (w >= 400)
                                ? 2
                                : 1;

    double itemHeight;

    if (w >= 1200) {
      itemHeight = 0.5 * h;
    } else if (w >= 1150) {
      itemHeight = 0.42 * h;
    } else if (w >= 1100) {
      itemHeight = 0.42 * h;
    } else if (w >= 1000) {
      itemHeight = 0.41 * h;
    } else if (w >= 900) {
      itemHeight = 0.39 * h;
    } else if (w >= 800) {
      itemHeight = 0.35 * h;
    } else if (w >= 700) {
      itemHeight = 0.33 * h;
    } else if (w >= 600) {
      itemHeight = 0.31 * h;
    } else if (w >= 500) {
      itemHeight = 0.3 * h;
    } else if (w >= 400) {
      itemHeight = 0.28 * h;
    } else {
      itemHeight = 0.23 * h;
    }

    double itemWidth = 0.8 * w / columns - 0.02 * w;

    return Column(
      children: [
        Text(
          "Portfolio",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 0.025 * w,
              color: Colors.black),
        ),
        Text(
          "Portfolio of some relevant projects:",
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 0.017 * w,
            color: Colors.grey[400],
          ),
        ),
        SizedBox(height: 0.02 * h),
        Wrap(
          spacing: 0.01 * w,
          runSpacing: 0.02 * h,
          children: List.generate(
            8,
            (index) => Container(
              width: itemWidth,
              height: itemHeight,
              margin: EdgeInsets.all(0.01 * w),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(0.003 * w),
              ),
              child: Column(
                children: [
                  SizedBox(height: 0.01 * h),
                  Text(
                    "Flutter App",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 0.017 * w,
                        color: Colors.green),
                  ),
                  SizedBox(height: 0.01 * h),
                  Text(
                    "Bazzar App",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 0.022 * w,
                        color: Colors.black),
                  ),
                  SizedBox(height: 0.01 * h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.01 * w),
                    child: Text(
                      "By using firebase as a backend, I developed a flutter app for shopping online, Cart",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 0.016 * w,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 0.01 * h),
                  Text(
                    "Technologies Used",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 0.017 * w,
                        color: Colors.black),
                  ),
                  SizedBox(height: 0.01 * h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: .01 * w),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWiWY0E_du9TYa4Nd-XDhDJNjUrU6r6h31JQ&s",
                          width: 0.025 * w,
                          height: 0.04 * h,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: .01 * w),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzzPL5MeLqdbE7bDka2QS8elhd8gn0L_h3Ug&s",
                          width: 0.025 * w,
                          height: 0.04 * h,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: .01 * w),
                        child: Image.network(
                          "https://www.gstatic.com/devrel-devsite/prod/v5"
                          "ab6fd0ad9c02b131b4d387b5751ac2c3616478c6dd65b5e931f0805efa1009c/firebase/images/touchicon-180.png",
                          width: 0.025 * w,
                          height: 0.04 * h,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.02 * h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: .04 * w),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.009 * w),
                      ),
                      minWidth: w,
                      height: 0.07 * h,
                      color: Colors.green,
                      onPressed: () {},
                      child: Text(
                        "GITHUB LINK",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 0.015 * w,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(height: 0.03 * h),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
