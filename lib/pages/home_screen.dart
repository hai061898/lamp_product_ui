import 'package:flutter/material.dart';
import 'package:lamp_product/pages/components/card_product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Color(0xff1b1b1b),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("images/lamp2.png"),
                  ),
                ),
                child: SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shopping_bag_rounded,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "32",
                          style: TextStyle(
                            color: Color(0xffffe7d0),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 1,
                            color: Color(0xffd2beac),
                          ),
                        ),
                        Text(
                          "312",
                          style: TextStyle(
                            color: Color(0xffffe7d0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Lamp",
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffe7d0),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Kartinova",
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffc2b0a0),
                              ),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Light source made in modern style",
                              style: TextStyle(
                                color: Color(0xffb0b0b0),
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Used for creating the main beauty of home",
                              style: TextStyle(
                                color: Color(0xffb0b0b0),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(  
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    leading: Text(
                      "Popular Lamp",
                       style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    trailing: Text(  
                      "1/20",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(  
                      children: [
                        ProductCard(img: "images/light2.png"),
                        ProductCard(img: "images/lamp.png"),
                        ProductCard(img: "images/light2.png"),
                        ProductCard(img: "images/lamp.png"),
                      ],
                    ),
                  )
                ],
              ),
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    height: h * 0.1 - 20,
                    minWidth: w * 0.1 + 20,
                    color: Color(0xfffc6e20),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      "All",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
