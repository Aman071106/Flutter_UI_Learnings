import 'package:flutter/material.dart';

class FoodDelivery extends StatelessWidget {
  const FoodDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 20, top: 10, bottom: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.shopping_basket,
                  size: 20,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text("Food Delivery",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 10,
                children: [
                  SizedBox(
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                              Colors.orangeAccent.withValues(alpha: 0.7))),
                      child: Text(
                        "Pizza",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.white)),
                      child: Text(
                        "Rolls",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.white)),
                      child: Text(
                        "Burger",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.white)),
                      child: Text(
                        "Momos",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Free Delivery",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                  color: Colors.black.withValues(alpha: 0.7)),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 20,
                  children: [
                    Container(
                      height: 480,
                      width: 280,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://www.simplyrecipes.com/thmb/KRw_r32s4gQeOX-d07NWY1OlOFk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Simply-Recipes-Homemade-Pizza-Dough-Lead-Shot-1c-c2b1885d27d4481c9cfe6f6286a64342.jpg")),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.amber),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 15,
                              right: 12,
                              child: Icon(
                                Icons.favorite,
                                color: Colors.redAccent,
                              )),
                          Positioned(
                            left: 0,
                            bottom: 10,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                color: Colors.blueGrey.withValues(alpha: 0),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "₹ 15.00",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 26,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("Vegeterian Pizza",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 480,
                      width: 280,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://content3.jdmagicbox.com/comp/def_content/pizza_outlets/default-pizza-outlets-13.jpg")),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.amber),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 15,
                              right: 12,
                              child: Icon(
                                Icons.favorite,
                                color: Colors.redAccent,
                              )),
                          Positioned(
                            left: 0,
                            bottom: 10,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                color: Colors.blueGrey.withValues(alpha: 0),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "₹ 15.00",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 26,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("Vegeterian Pizza",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 480,
                      width: 280,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZ9c4T8ahaLDklv9SRpAWhrYIyRZYuphaLPg&s")),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.amber),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 15,
                              right: 12,
                              child: Icon(
                                Icons.favorite,
                                color: Colors.redAccent,
                              )),
                          Positioned(
                            left: 0,
                            bottom: 10,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                color: Colors.blueGrey.withValues(alpha: 0),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "₹ 25.00",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 26,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("Vegeterian Pizza",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
