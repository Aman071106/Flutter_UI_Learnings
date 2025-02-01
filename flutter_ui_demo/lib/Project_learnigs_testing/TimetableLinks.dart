import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Timetablelinks extends StatefulWidget {
  const Timetablelinks({super.key});
  @override
  createState() => _Timetablelinks();
}

class _Timetablelinks extends State<Timetablelinks> {
  //ITEMS list
  //update
  final Map<String, String> _Programs = {
    "Select Program": "",
    "B.Tech 1st Year": "https://cloud.iitmandi.ac.in/f/fcae1b4637574c15a2d8/",
    "B.Tech 2nd Year": "https://cloud.iitmandi.ac.in/f/fcae1b4637574c15a2d8/",
    "B.Tech 3rd Year": "https://cloud.iitmandi.ac.in/f/fcae1b4637574c15a2d8/",
    "B.Tech 4th Year": "https://cloud.iitmandi.ac.in/f/fcae1b4637574c15a2d8/",
    "M.Tech 1st Year": "https://cloud.iitmandi.ac.in/f/fcae1b4637574c15a2d8/",//to be continued....
  };
  //selected item string
  String? selectedProgram = "Select Program";
  double buttonColor = 0.6;
  //launch function
  Future<void> _urlLaunch(String url) async {
    final Uri uri = Uri.parse(url.trim()); // Convert the string to a Uri object
    log("$uri");
    try {
      await launchUrl(uri);
      log('Launched successfully');
    } catch (e) {
      log('Error occurred while launching: $e');
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.only(left: w / 10, right: w / 10),
          width: w,
          height: MediaQuery.of(context).size.height / 5,
          // color: Colors.amber,
          child: Center(
            child: Column(
              children: [
                DropdownButton(
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                    isExpanded: true,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 40 / 373 * w,
                    value: selectedProgram,
                    items: _Programs.keys
                        .map<DropdownMenuItem<String>>((String program) {
                      return DropdownMenuItem<String>(
                        value: program,
                        child: Text(program),
                      );
                    }).toList(),
                    onChanged: (String? selected) {
                      if (selected == "Select Program") {
                        setState(() {
                          selectedProgram = "Select Program";
                          buttonColor = 0.6;
                        });
                        return;
                      }
                      setState(() {
                        // _urlLaunch(_Programs[selected]!);
                        buttonColor = 1;
                        selectedProgram = selected;
                      });
                    }),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Color(0xFF3283D5).withValues(alpha: buttonColor)),
                      elevation: WidgetStatePropertyAll(4),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))))),
                  onPressed: () {
                    if (selectedProgram != "Select Program" &&
                        selectedProgram != null) {
                      _urlLaunch(_Programs[selectedProgram]!);
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Download",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
