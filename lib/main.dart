import 'package:flutter/material.dart';
import 'package:project_learning_g1/destination.dart';
import 'package:project_learning_g1/genre_slider.dart';
import 'package:project_learning_g1/homepage.dart';
import 'package:project_learning_g1/imageslider.dart';
import 'package:project_learning_g1/model/CartModel.dart';
import 'package:project_learning_g1/page.dart';
import 'package:project_learning_g1/product_page.dart';
import 'package:project_learning_g1/provider/News.dart';
import 'package:project_learning_g1/provider/Products.dart';
import 'package:provider/provider.dart';

import 'food_page.dart';
import 'food_page2.dart';
import 'login_page.dart';
import 'newspage.dart';

void main() {
  List<CartModel> listCart = [];
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=> ProductProvider())
    ],
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProductPage(),
      ),
    )
    //LIST VIEW & GRID VIEW
  );
}
