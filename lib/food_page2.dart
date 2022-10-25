import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_learning_g1/login_page.dart';
import 'package:project_learning_g1/model/FoodModel.dart';

class FoodPage2 extends StatelessWidget {

  FoodPage2({Key? key}) : super(key: key);

  List<FoodModel> list = FoodModel.MockData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildbuttonIcons(context),
                  SizedBox(height: 40),
                  buildToday(context),
                  SizedBox(height: 20),
                  builText(context),
                  SizedBox(height: 20),
                  buildFood(context),
                  SizedBox(height: 30),
                  buildPlaces(context),
                  SizedBox(height: 40),
                  buildSushiPlaces(context),
                ]
            ),
          ),
        ),
      ),
    );
  }

  buildbuttonIcons(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));

          },
            icon: Icon(Icons.arrow_back,color: Colors.grey),
          ),
          IconButton(onPressed: (){},
            icon: Icon(Icons.search, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  buildToday(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Today's Special",
          style: TextStyle(fontSize: 35, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 100,
          height: 40,
          child: RaisedButton(onPressed: (){},
            color: Colors.green[300],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add_shopping_cart_outlined, color: Colors.white,),
                Text("CART", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        )
      ],
    );
  }

  buildFood(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildSushi1(context),
        Container(
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildSushi2(context),
              buildSushi3(context)
            ],
          ),
        ),

      ],
    );
  }

  builText(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,      children: [
          Text("Find out what's cooking today!",
            style: TextStyle(color: Colors.grey[400], fontSize: 15),
          )
        ]
      ),
    );
  }

  buildSushi1(BuildContext context) {
    return
      SizedBox(
        width: 260,
        height: 400,
        child: RaisedButton(onPressed: (){},
          color: Colors.blue[200],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))
          ),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: 220,
                  margin: EdgeInsets.fromLTRB(0, 50, 0, 20),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/sushi1.png"),
                        fit: BoxFit.cover,
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 0, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Yoshimasa Sushi", style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          )
                          ),
                        ]
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.star,
                            color: Colors.white,
                            size: 15,
                          ),
                          Icon(Icons.star,
                            color: Colors.white,
                            size: 15,
                          ),
                          Icon(Icons.star,
                            color: Colors.white,
                            size: 15,
                          ),
                          Icon(Icons.star,
                            color: Colors.white,
                            size: 15,
                          ),
                          Icon(Icons.star,
                            color: Colors.white,
                            size: 15,
                          ),
                          Text("   250 Ratings", style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,

                          ),)
                        ],
                      ),
                      SizedBox(height: 10),
                      Text("Lorem Ipsum is simply dummy text of the printing ", style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,

                        )
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ),
    );
  }

  buildSushi2(BuildContext context) {
    return SizedBox(
      width: 170,
      height: 195,
      child: RaisedButton(onPressed: (){},
        color: Colors.green[300],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all((Radius.circular(30)))
        ),
        child: Column(
          children: [
            Container(
              width: 120,
              height: 80,
              margin: EdgeInsets.fromLTRB(0, 20, 0, 5),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/sushi2.png"),
                )
              ),
            ),
            Container(
              width: 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Yoshimasa\nSushi", style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                    )
                  ),
                  Container(
                    width: 70,
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.star,
                          color: Colors.white,
                          size: 12,
                        ),
                        Icon(Icons.star,
                          color: Colors.white,
                          size: 12,
                        ),
                        Icon(Icons.star,
                          color: Colors.white,
                          size: 12,
                        ),
                        Icon(Icons.star,
                          color: Colors.white,
                          size: 12,
                        ),
                        Icon(Icons.star,
                          color: Colors.white,
                          size: 12,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  buildSushi3(BuildContext context) {
    return SizedBox(
      width: 170,
      height: 195,
      child: RaisedButton(onPressed: (){},
        color: Colors.grey[850],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all((Radius.circular(30)))
        ),
        child: Column(
          children: [
            Container(
              width: 120,
              height: 80,
              margin: EdgeInsets.fromLTRB(0, 30, 0, 5),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/sushi3.png"),
                  )
              ),
            ),
            Container(
              width: 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Prato Sushi", style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  )
                  ),
                  Container(
                    width: 70,
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.star,
                          color: Colors.white,
                          size: 12,
                        ),
                        Icon(Icons.star,
                          color: Colors.white,
                          size: 12,
                        ),
                        Icon(Icons.star,
                          color: Colors.white,
                          size: 12,
                        ),
                        Icon(Icons.star,
                          color: Colors.white,
                          size: 12,
                        ),
                        Icon(Icons.star,
                          color: Colors.white,
                          size: 12,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  buildPlaces(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Places", style: TextStyle(
          color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.bold
          )
        ),
        Text("_______________________________________",
            style: TextStyle(
            color: Colors.grey[400],
            fontSize: 20,
            fontWeight: FontWeight.bold
        )
        ),
      ],
    );
  }

  buildSushiPlaces(BuildContext context) {
    return Container(
      height: 200,
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildSushiPlace("assets/images/place1.png", "Sushi Den"),
            SizedBox(height: 30),
            buildSushiPlace("assets/images/place2.png", "Hatsuhana Sushi"),
            SizedBox(height: 30),
            buildSushiPlace("assets/images/place3.png", "Hatsuhana Sushi"),

          ],
        ),
      ),
    );
  }

  buildSushiPlace(image, title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 85,
          height: 80,
          margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              )
          ),
        ),
        Container(
          height: 90,
          width: 240,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(title, style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
                )
              ),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  Icon(Icons.star, color: Colors.orange, size: 18),

                ],
              ),
              Text("Lorem Ipsum is simply dummy text of the printing and typesetting",
                style: TextStyle(
                  fontSize: 14
                ),
              )
            ],
          ),
        ),
        Container(
          width: 100,
          height: 40,
          child: RaisedButton(
            onPressed: (){},
            color: Colors.green[300],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all((Radius.circular(30)))
            ),
            child: Text("Order Now",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12
              ),
            ),
          ),
        )
      ],
    );
  }

}

