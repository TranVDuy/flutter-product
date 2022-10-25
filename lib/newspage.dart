import 'package:flutter/material.dart';
import 'package:project_learning_g1/provider/News.dart';
import 'package:provider/provider.dart';

import 'imagedetail.dart';


class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var newsProvider = Provider.of<NewsProvider>(context);
    newsProvider.getList();
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ...newsProvider.list.map((e) {
            return GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ImageDetail(data: e))
                );
              },
              child: Column(
                children: [
                  Image.network(e.urlToImage??""),
                  Text(e.title??"")
                ],
              ),
            );
          })
        ],
      ),
    );
  }
}
