import 'package:flutter/material.dart';

class FoodPage extends StatefulWidget {
  
  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  List<String> lst = [
    "assets/images/land1.jpg",
    "assets/images/land2.jpg",
    "assets/images/land3.jpg",
    "assets/images/land4.jpg",
  ];

  bool showGrid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTitle(context),
              SizedBox(height: 40),
              buildWelcome(context),
              SizedBox(height: 20),
              buildSearch(context),
              SizedBox(height: 20),
              buildSavedPlace(context),
              SizedBox(height: 20),

              showGrid ? buildGrid(context) : buildList(context)
            ]
          ),
        ),
      ),
    );
  }

  buildWelcome(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text.rich(
          TextSpan(
            text: "Welcom,\n",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold
            ),
            children: [
              TextSpan(
                text: "Charlie",
                style: TextStyle(
                  fontWeight: FontWeight.normal
                )
              )
            ]
          )
        ),
      ],
    );
  }

  buildTitle(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(onPressed: (){},
            icon: Icon(Icons.notifications),
          ),
          IconButton(onPressed: (){},
            icon: Icon(Icons.extension),
          ),
        ],
      ),
    );
  }

  buildSearch(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        )
      ),
    );
  }

  buildSavedPlace(BuildContext context) {
    return
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
          "Save Places",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),
          ),
          Row(
            children: [
              IconButton(onPressed: (){
                setState(() {
                  showGrid = true;
                });
              }, icon: Icon(Icons.grid_3x3, size: 30,)),
              IconButton(onPressed: (){
                setState(() {
                  showGrid = false;
                });
              }, icon: Icon(Icons.list, size: 30,))
            ],
          )
        ],
      );
  }

  buildGrid(BuildContext context) {
    return Expanded(
      child: GridView.count(
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        crossAxisCount: 2,
        children: [
          ...lst.map((e) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(e),
                  fit: BoxFit.cover,
                )
              ),
            );
          }).toList()
        ],
      ),
    );
  }

  buildList(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.vertical,

        children: [
          ...lst.map((e) {
            return Container(
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(e),
                    fit: BoxFit.cover,
                  )
              ),
            );
          }).toList()
        ],

      ),
    );
  }
}
