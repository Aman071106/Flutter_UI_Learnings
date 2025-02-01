import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui_demo/Project_learnigs_testing/fadeanimation.dart';
import 'package:flutter_ui_demo/Project_learnigs_testing/fooddelivery.dart';

class Starter extends StatelessWidget {
  const Starter({super.key});

  @override
  Widget build(BuildContext context) {
    void ontap() {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => FoodDelivery()));
    }

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1530554764233-e79e16c91d08?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGZvb2QlMjBkZWxpdmVyeXxlbnwwfHwwfHx8MA%3D%3D"))),
        child: Material(
          color: Colors.transparent,
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.only(left: 18, right: 18, top: 350),
            child: FadeAnimation(
              delay: 1.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: 280,
                      child: Text(
                        "Taking Order For Delivery",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w800),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: 200,
                      child: Text("Some resturants nearby by adding location",
                          style: TextStyle(color: Colors.white))),
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        gradient: LinearGradient(colors: [
                          Colors.amberAccent.withValues(alpha: 0.5),
                          Colors.orange
                        ])),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.transparent),
                          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))))),
                      onPressed: () {
                        ontap();
                      },
                      child: Text(
                        "Start",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: Text("Now Deliver To your Door 24/7",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white.withValues(alpha: 0.7))))
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
