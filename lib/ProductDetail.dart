import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:project_learning_g1/cart_page.dart';
import 'package:project_learning_g1/model/CartModel.dart';
import 'package:project_learning_g1/model/ProductModel.dart';
import 'package:project_learning_g1/product_page.dart';
import "cart.dart" as cart;



class ProductDetail extends StatefulWidget {

  final ProductModel data;
  const ProductDetail({ super.key, required this.data });

  @override
  State<ProductDetail> createState() =>  _ProductDetail();
}

class _ProductDetail extends State<ProductDetail> {

  int quantity = 1;
  ProductModel q = ProductModel();
  List<CartModel> listCart = [];
  @override


  @override
  Widget build(BuildContext context) {
    setState(() {
      q = widget.data;
    });
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('Product Detail'),
        // ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(50),
            child: Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => ProductPage()));
                        },
                        icon: Icon(Icons.arrow_back),
                      ),
                      Badge(
                        badgeContent: Text(
                            ' ${cart.lst.length} ', style: TextStyle(color: Colors.white)),
                        animationDuration: Duration(milliseconds: 300),
                        animationType: BadgeAnimationType.slide,
                        position: BadgePosition.topStart(),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CartPage(data: listCart)));
                          },
                          icon: Icon(Icons.shopping_cart),
                        ),
                      ),

                    ],
                  ),

                  Image.network(widget.data.image ?? "",
                      height: 200, width: 200, fit: BoxFit.contain),
                  SizedBox(height: 40,),
                  Text(widget.data.title ?? "", style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Text(widget.data.description ?? ""),
                  SizedBox(height: 20,),
                  Text(widget.data.category ?? ""),

                ],
              ),
            ),
          ),
        )
      ),
    );
  }

}
