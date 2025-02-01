import 'package:flutter/material.dart';
import 'package:flutter_ui_demo/IndividualWidgets/container_sized.dart';
import 'package:flutter_ui_demo/Project_learnigs_testing/fadeanimation.dart';
import 'package:page_transition/page_transition.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});
  @override
  createState() => _Splash();
}

class _Splash extends State<Splash> with SingleTickerProviderStateMixin {
  late AnimationController _scaleController;
  late Animation<double> _scaleAnimation;

  bool hide = false;

  @override
  void initState() {
    super.initState();

    _scaleController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 30.0).animate(_scaleController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              Navigator.push(
                context,
                PageTransition(type: PageTransitionType.fade, child: MyBox1()),
              );
            }
          });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: w,
        height: h,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://media.istockphoto.com/id/501387734/photo/dancing-friends.jpg?s=612x612&w=0&k=20&c=SoTKXXMiJYnc4luzJz3gIdfup3MI8ZlROFNXRBruc10=")),
            color: Colors.amber),
        child: Container(
          width: w,
          height: h,
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
            Colors.black.withValues(alpha: 0.5),
            Colors.black.withValues(alpha: 0.4),
            Colors.black.withValues(alpha: 0.3),
            Colors.black.withValues(alpha: 0.2),
            Colors.black.withValues(alpha: 0.1)
          ])),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeAnimation(
                  delay: 1.4,
                  child: Text(
                    "Find the best locations near you for a good night",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                FadeAnimation(
                  delay: 1.6,
                  child: Text(
                    "Let us find an event for your interest",
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 26,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                SizedBox(
                  height: 130,
                ),
                FadeAnimation(
                  delay: 1.7,
                  child: AnimatedBuilder(
                    animation: _scaleController,
                    builder: (context, child) => Transform.scale(
                        scale: _scaleAnimation.value,
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  padding: WidgetStatePropertyAll(
                                      EdgeInsets.all(15)),
                                  backgroundColor:
                                      WidgetStatePropertyAll(Colors.amber)),
                              onPressed: () {
                                setState(() {
                                  hide = true;
                                });
                                _scaleController.forward();
                              },
                              child: hide == false
                                  ? Text(
                                      "Navigate",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal),
                                    )
                                  : Container(
                                      height: 10,
                                    )),
                        )),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
