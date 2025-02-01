import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Inspiration extends StatefulWidget {
  const Inspiration({super.key});
  @override
  createState() => _Inspiration();
}

class _Inspiration extends State<Inspiration> {
  @override
  Widget build(BuildContext context) {
    // Hides the status bar
    // Hide the status bar and navigation bar
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Status bar color
      systemNavigationBarColor: Colors.grey, // Navigation bar color
      systemNavigationBarIconBrightness:
          Brightness.light, // Navigation bar icons color
    ));
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        color: Colors.transparent,
        child: Stack(
          children: [
            Container(
              width: w,
              height: h,
              color: Colors.grey.withValues(alpha: 0.4),
              child: Padding(
                padding: EdgeInsets.only(
                    top: h / 2.2, left: 20, right: 20, bottom: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Promo Today",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Wrap(
                        spacing: 15,
                        children: [
                          Container(
                            height: h / 4,
                            width: w / 2.4,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                          Container(
                            height: h / 4,
                            width: w / 2.4,
                            decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                          SizedBox(
                            height: 15,
                            width: double.infinity,
                          ),
                          Container(
                            height: h / 4,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.purpleAccent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          )
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
              height: h / 2.3,
              width: w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  color: Colors.white),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.menu,
                      size: 40,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Find Your",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Inspiration",
                          style: TextStyle(
                              fontSize: 45, fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        padding: EdgeInsets.only(
                            bottom: 10, left: 16, right: 10, top: 10),
                        height: 65,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.grey.withValues(alpha: 0.2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(bottom: 7),
                                    border: InputBorder.none,
                                    icon: Icon(
                                      Icons.search,
                                      size: 25,
                                    ),
                                    hintStyle: TextStyle(
                                      color: Colors.blueGrey,
                                      fontSize: 14,
                                    ),
                                    hintText: "Search you're looking for"),
                                key: ValueKey("Search"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ]),
            )
          ],
        ),
      )),
    );
  }
}
