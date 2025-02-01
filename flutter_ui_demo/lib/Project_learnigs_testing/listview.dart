import 'package:flutter/material.dart';

class ListviewP extends StatefulWidget {
  const ListviewP({super.key});
  @override
  createState() => _ListviewP();
}

class _ListviewP extends State<ListviewP> {
  final ListOfChairs = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4FlgiLK3hqTZGJaj0tv07EGGwEG6yRJHzsQ&s",
    "https://omacme.in/cdn/shop/files/Office310main.jpg?v=1720429630&width=640",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmzcPL27MDyH32A0YzPwsNC6kr5P5QALKSYw&s",
    "https://italica.com/cdn/shop/files/PhoenixChair_TealGreen.jpg?v=1734434116&width=533",
    "https://homeglamour.in/cdn/shop/products/SDP_9184.jpg?v=1675046195",
    "https://www.jfa.in/product-images/GF_C302_1.jpg/431189000037289141"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title:
            Center(child: Text("Home", style: TextStyle(color: Colors.white))),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Center(
                  child: Text(
                "0",
                style: TextStyle(color: Colors.white),
              )),
            ),
          )
        ],
      ),
      backgroundColor: Colors.grey[600], //50 to 900 is the shade number
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(Radius.elliptical(10, 40)),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://www.scandesign.com/cdn/shop/products/1360-Emperor-Chair1-grey_1200x.jpg?v=1634159708"))),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                      Colors.black.withValues(alpha: 0.3),
                      Colors.black.withValues(alpha: 0.1)
                    ])),
                child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      "LifeStyle Sale",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 200,
                      child: TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStatePropertyAll(Colors.white),
                              shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))))),
                          onPressed: () {},
                          child: Text(
                            "Shop Now",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 400,
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 12,
                children: ListOfChairs.map((item) => Card(
                      child: Stack(
                        children: [
                          Container(
                            width: 100,
                            height: 250,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18)),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(item))),
                          ),
                          Positioned(
                              right: 18,
                              top: 10,
                              child: Container(
                                padding: EdgeInsets.only(right: 10),
                                color: Colors.white,
                                height: 30,
                                width: 20,
                                child:
                                    Center(child: Icon(Icons.bookmark_outline)),
                              ))
                        ],
                      ),
                    )).toList(),
              ),
            )
          ],
        ),
      )),
    );
  }
}
