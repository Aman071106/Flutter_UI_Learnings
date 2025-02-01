import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui_demo/Project_learnigs_testing/fadeanimation.dart';

class Actorprofile extends StatefulWidget {
  const Actorprofile({super.key});

  @override
  createState() => _Actorprofile();
}

class _Actorprofile extends State<Actorprofile> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.black, statusBarBrightness: Brightness.dark));
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: h / 2,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaDrvvX937BR8lJvs7rWUUHsReL-o4D-ZIXA&s"))),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              colors: [
                            Colors.black.withValues(alpha: 0.9),
                            Colors.black.withValues(alpha: 0.2)
                          ])),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FadeAnimation(
                              delay: 1,
                              child: Text(
                                "Emma Watson",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                FadeAnimation(
                                    delay: 1.2,
                                    child: Text("60 Films",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                        ))),
                                SizedBox(
                                  width: 50,
                                ),
                                FadeAnimation(
                                    delay: 1.3,
                                    child: Text("250K suscribers",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                        )))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    spacing: 0,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 200,
                        child: FadeAnimation(
                            delay: 1.6,
                            child: Text(
                              "Watson was born on April 15, 1990, in Paris, France, to British parents. At age five, she moved to Oxfordshire, England. At age nine, she was cast as Hermione Granger in the 'Harry Potter' movie series. She graduated from Brown University in 2014.",
                              style: TextStyle(color: Colors.grey),
                            )),
                      ),
                      FadeAnimation(
                          delay: 1.6,
                          child: Text(
                            "Born",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      FadeAnimation(
                          delay: 1.6,
                          child: Text(
                            "April, 15th 1990, Paris, France",
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      FadeAnimation(
                          delay: 1.6,
                          child: Text(
                            "Nationality",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      FadeAnimation(
                          delay: 1.6,
                          child: Text(
                            "British",
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      FadeAnimation(
                          delay: 1.6,
                          child: Text(
                            "Videos",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            VideoWidget(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm1bqbGWe3HQTDrQfmtbX4AsZIkr7V1oJEzA&s"),
                            VideoWidget(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXz5pX3Rn_mf_TgHVrZbBtNp7eUEN2Or_DjQ&s"),
                            VideoWidget(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKBy254IixldBsf4H9iZFaNNkDzD7qhHoOtw&s")
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ]))
            ],
          )
        ],
      ),
    );
  }
}

Widget VideoWidget(url) {
  return AspectRatio(
      aspectRatio: 1.3 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(url))),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
            Colors.black.withValues(alpha: 0.6),
            Colors.black.withValues(alpha: 0.2)
          ])),
          child: Center(
            child: Icon(
              size: 50,
              Icons.play_arrow_rounded,
              color: Colors.white.withValues(alpha: 0.6),
            ),
          ),
        ),
      ));
}

// https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaDrvvX937BR8lJvs7rWUUHsReL-o4D-ZIXA&s
