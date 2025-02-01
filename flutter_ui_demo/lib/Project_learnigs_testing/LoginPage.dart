import 'package:flutter/material.dart';
import 'package:flutter_ui_demo/Project_learnigs_testing/fadeanimation.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});
  @override
  createState() => _Loginpage();
}

class _Loginpage extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          FadeAnimation(
            delay: 2.3,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://img.freepik.com/premium-vector/drawing-plant-with-pink-flowers-green-leaves_948128-1093.jpg?w=900"))),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.grey,
                  Colors.blueGrey.withValues(alpha: .2)
                ])),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 350,
                  child: Center(
                    child: FadeAnimation(
                      delay: 1.4,
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 46,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                FadeAnimation(
                  delay: 1.5,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 40.0, right: 40, top: 40),
                    child: Container(
                      padding: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.lightGreen, Colors.green]),
                          borderRadius: BorderRadius.all(Radius.circular(17))),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                            hintText: "Login",
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
                FadeAnimation(
                  delay: 1.6,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 40.0, right: 40, top: 40),
                    child: Container(
                      padding: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.lightGreen, Colors.green]),
                          borderRadius: BorderRadius.all(Radius.circular(17))),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                            hintText: "Password",
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}



//"https://img.freepik.com/premium-vector/drawing-plant-with-pink-flowers-green-leaves_948128-1093.jpg?w=900"

/*FadeAnimation(
                    delay: 1.4,
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://img.freepik.com/premium-vector/drawing-plant-with-pink-flowers-green-leaves_948128-1093.jpg?w=900"))),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                          Colors.grey,
                          Colors.blueGrey.withValues(alpha: .2)
                        ])),
                      ),
                    ),
                  ),*/