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
    return Column(
      children: [
        Text(
          "Portfolio",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 0.02 * w,
              color: Colors.black),
        ),
        Text(
          "Portfolio of some relevant projects:",
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 0.01 * w,
            color: Colors.grey[400],
          ),
        ),
        SizedBox(height: 0.02 * h),
        Wrap(
          children: [
            Container(margin: EdgeInsets.all(0.01*w),
              height: 0.4 * h,
              width: 0.2 * w,
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
                        fontSize: 0.01 * w,
                        color: Colors.green),
                  ),
                  SizedBox(height: 0.01 * h),
                  Text(
                    "Bazzar App",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 0.016 * w,
                        color: Colors.black),
                  ),
                  SizedBox(height: 0.01 * h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.01 * w),
                    child: Text(
                      "By using firebase as a backend , I developed a flutter app for shoping online ,Cart ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 0.009 * w,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 0.01 * h),
                  Text(
                    "Technologies Used",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 0.01 * w,
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
                          height: 0.05 * h,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: .01 * w),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzzPL5MeLqdbE7bDka2QS8elhd8gn0L_h3Ug&s",
                          width: 0.025 * w,
                          height: 0.05 * h,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: .01 * w),
                        child: Image.network(
                          "https://www.gstatic.com/devrel-devsite/prod/v5"
                          "ab6fd0ad9c02b131b4d387b5751ac2c3616478c6dd65b5e931f0805efa1009c/firebase/images/touchicon-180.png",
                          width: 0.025 * w,
                          height: 0.05 * h,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
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
                            fontSize: 0.01 * w,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(height: 0.03 * h),
                ],
              ),
            ),
            Container(margin: EdgeInsets.all(0.01*w),
              height: 0.4 * h,
              width: 0.2 * w,
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
                        fontSize: 0.01 * w,
                        color: Colors.green),
                  ),
                  SizedBox(height: 0.01 * h),
                  Text(
                    "Bazzar App",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 0.016 * w,
                        color: Colors.black),
                  ),
                  SizedBox(height: 0.01 * h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.01 * w),
                    child: Text(
                      "By using firebase as a backend , I developed a flutter app for shoping online ,Cart ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 0.009 * w,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 0.01 * h),
                  Text(
                    "Technologies Used",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 0.01 * w,
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
                          height: 0.05 * h,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: .01 * w),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzzPL5MeLqdbE7bDka2QS8elhd8gn0L_h3Ug&s",
                          width: 0.025 * w,
                          height: 0.05 * h,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: .01 * w),
                        child: Image.network(
                          "https://www.gstatic.com/devrel-devsite/prod/v5"
                              "ab6fd0ad9c02b131b4d387b5751ac2c3616478c6dd65b5e931f0805efa1009c/firebase/images/touchicon-180.png",
                          width: 0.025 * w,
                          height: 0.05 * h,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
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
                            fontSize: 0.01 * w,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(height: 0.03 * h),
                ],
              ),
            ),
          ],
        ),

      ],
    );
  }
}
