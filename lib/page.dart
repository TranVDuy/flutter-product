
import 'package:flutter/material.dart';
import 'package:project_learning_g1/destination.dart';

import 'genre_slider.dart';


class PageLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MY FIRST APP")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SliderDestination(),
            GenreSlide(),
            blockImage(),
            blockTitle(),
            actionButton(),
            blockText(),
            // DestiantionLocal()
          ],
        ),
      ),
    );
  }

  blockImage(){
    return Image.asset("assets/images/landscape.jpg");
  }
  blockTitle() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 30, 0, 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("What is Lorem Ipsum?",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
                ),
              ),
              Text("Lorem Ipsum is simply",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black38
                ),
              )
            ],
          ),
          Row(
            children: [
              Icon(Icons.star,
                color: Colors.red,
              ),
              Text("59",
                style: TextStyle(
                  fontSize: 16
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  actionButton(){
    return Container(
      margin: EdgeInsets.fromLTRB(20, 15, 20, 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          button(Icons.phone, "CALL"),
          button(Icons.near_me, "ROUTE"),
          button(Icons.share, "SHARE"),
        ],
      ),
    );
  }

  button(iconname, name){
    return Column(
      children: [
        Icon(iconname, color: Colors.blue,),
        Text(name,
          style: TextStyle(color: Colors.blue),
        )
      ],
    );
  }

  blockText(){
    return Container(
      margin: EdgeInsets.fromLTRB(60, 15, 60, 15),
      child: Column(
        children: [
          Text("Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
              "when an unknown printer took a galley of type and scrambled it to make a type specimen book."
              "It has survived not only five centuries, but also the leap into electronic typesetting"
              "remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem"
              , textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
