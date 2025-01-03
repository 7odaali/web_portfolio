/*
import 'package:flutter/material.dart';

class TopScreen extends StatefulWidget {
  const TopScreen({super.key});

  @override
  State<TopScreen> createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  "Mahmoud Ali Ebaid",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 0.022 * w,
                      color: Colors.black),
                ),
                SizedBox(height: 0.0015 * h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Software Engineer,  ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 0.015 * w,
                          color: const Color(0xFF1565C0)),
                    ),
                    const Icon(
                      Icons.location_on_rounded,
                      color: Color(0xFF1565C0),
                    ),
                    Text(
                      "Cairo",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 0.015 * w,
                        color: const Color(0xFF1565C0),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 0.0015 * h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "23 Years Old  ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 0.015 * w,
                        color: const Color(0xFF1565C0),
                      ),
                    ),
                    const Icon(
                      Icons.man,
                      color: Color(0xFF1565C0),
                    ),
                    Text(
                      "Male",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 0.015 * w,
                        color: const Color(0xFF1565C0),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(width: 0.02 * w),
            Container(
              width: 0.1 * w,
              height: 0.1 * w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: ClipOval(
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoFRQjM-wM_nXMA03AGDXgJK3VeX7vtD3ctA&s",
                  fit: BoxFit.cover,
                  width: 0.12 * w,
                  height: 0.12 * w,
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(
                      Icons.person,
                      size: 0.06 * w,
                      color: Colors.grey,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
*/
/*import 'package:flutter/material.dart';

class TopScreen extends StatefulWidget {
  const TopScreen({super.key});

  @override
  State<TopScreen> createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;

    final textColor =
        Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black;
    final accentColor = Theme.of(context).primaryColor;
    final backgroundColor = Theme.of(context).scaffoldBackgroundColor;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  "Mahmoud Ali Ebaid",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 0.022 * w,
                    color: textColor,
                  ),
                ),
                SizedBox(height: 0.0015 * h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Software Engineer,  ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 0.015 * w,
                        color: accentColor,
                      ),
                    ),
                    Icon(
                      Icons.location_on_rounded,
                      color: accentColor,
                    ),
                    Text(
                      "Cairo",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 0.015 * w,
                        color: accentColor,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 0.0015 * h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "23 Years Old  ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 0.015 * w,
                        color: accentColor,
                      ),
                    ),
                    Icon(
                      Icons.man,
                      color: accentColor,
                    ),
                    Text(
                      "Male",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 0.015 * w,
                        color: accentColor,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(width: 0.02 * w),
            if (w > 700)
              Container(
                width: 0.1 * w,
                height: 0.1 * w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: backgroundColor,
                ),
                child: ClipOval(
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoFRQjM-wM_nXMA03AGDXgJK3VeX7vtD3ctA&s",
                    fit: BoxFit.cover,
                    width: 0.12 * w,
                    height: 0.12 * w,
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(
                        Icons.person,
                        size: 0.06 * w,
                        color: Colors.grey,
                      );
                    },
                  ),
                ),
              )
            else
              const SizedBox.shrink()
          ],
        ),
      ],
    );
  }
}*/
import 'package:flutter/material.dart';

class TopScreen extends StatefulWidget {
  const TopScreen({super.key});

  @override
  State<TopScreen> createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;

    final textColor =
        Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black;
    final accentColor = Theme.of(context).primaryColor;
    final backgroundColor = Theme.of(context).scaffoldBackgroundColor;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  "Mahmoud Ali Ebaid",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 0.022 * w,
                    color: textColor,
                  ),
                ),
                SizedBox(height: 0.0015 * h),
                w > 700
                    ? Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Software Engineer,  ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 0.015 * w,
                                  color: accentColor,
                                ),
                              ),
                              Icon(
                                Icons.location_on_rounded,
                                color: accentColor,
                              ),
                              Text(
                                "Cairo",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 0.015 * w,
                                  color: accentColor,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 0.0015 * h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "23 Years Old  ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 0.015 * w,
                                  color: accentColor,
                                ),
                              ),
                              Icon(
                                Icons.man,
                                color: accentColor,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 0.015 * w,
                                  color: accentColor,
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Software Engineer,  ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 0.015 * w,
                              color: accentColor,
                            ),
                          ),
                          Icon(
                            Icons.location_on_rounded,
                            color: accentColor,
                          ),
                          Text(
                            "Cairo  |  ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 0.015 * w,
                              color: accentColor,
                            ),
                          ),
                          Text(
                            "23 Years Old  ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 0.015 * w,
                              color: accentColor,
                            ),
                          ),
                          Icon(
                            Icons.man,
                            color: accentColor,
                          ),
                          Text(
                            "Male",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 0.015 * w,
                              color: accentColor,
                            ),
                          )
                        ],
                      ),
              ],
            ),
            SizedBox(width: 0.02 * w),
            if (w > 700)
              Container(
                width: 0.1 * w,
                height: 0.1 * w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: backgroundColor,
                ),
                child: ClipOval(
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoFRQjM-wM_nXMA03AGDXgJK3VeX7vtD3ctA&s",
                    fit: BoxFit.cover,
                    width: 0.12 * w,
                    height: 0.12 * w,
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(
                        Icons.person,
                        size: 0.06 * w,
                        color: Colors.grey,
                      );
                    },
                  ),
                ),
              )
            else
              const SizedBox.shrink()
          ],
        ),
      ],
    );
  }
}
