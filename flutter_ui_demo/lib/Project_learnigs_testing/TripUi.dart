import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Tripui extends StatefulWidget {
  const Tripui({super.key});
  @override
  createState() => _Tripui();
}

class _Tripui extends State<Tripui> {
  bool _showFinalText = false;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.black,
        statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: Colors.blue,
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://vl-prod-static.b-cdn.net/system/images/000/446/319/6e87e61a928a08eb2e8544c774a8f9b3/x1000gt/WhatsApp_Image_2020-09-11_at_2_27_50_AM.jpeg?1619389439"))),
            height: h,
            width: w,
            child: Stack(
              children: [
                Positioned(
                  bottom: 20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Material(
                        color: Colors.transparent,
                        elevation: 20,
                        shadowColor: Colors.transparent,
                        child: Container(
                            padding: const EdgeInsets.only(left: 10),
                            child: _showFinalText
                                ? Text(
                                    "Kedarnath",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 37,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                : AnimatedTextKit(
                                    animatedTexts: [
                                        FadeAnimatedText(
                                          "Kedarnath",
                                          duration: Duration(seconds: 2),
                                          textStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 37,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    isRepeatingAnimation: false,
                                    onFinished: () {
                                      setState(() {
                                        _showFinalText =
                                            true; // Show final text
                                      });
                                    })),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, top: 20, bottom: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.grey,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "4",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        width: w,
                        child: Card(
                            color: Colors.transparent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.zero)),
                            child: AnimatedTextKit(animatedTexts: [
                              TyperAnimatedText(
                                speed: Duration(milliseconds: 30),
                                "Kedarnath is the most remote of the four Chota Char Dham pilgrimage sites. It is located in the Himalayas, about 3,583 m (11,755 ft) above sea level near the Chorabari Glacier, which is the source of the Mandakini River. The town is flanked by snow-capped peaks, most prominently the Kedarnath Mountain",
                                textStyle: TextStyle(
                                    fontSize: 13, color: Colors.white),
                              ),
                            ])),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.blue,
            height: h,
            width: w,
          )
        ],
      ),
    );
  }
}
