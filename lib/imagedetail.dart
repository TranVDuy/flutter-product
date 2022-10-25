import 'package:flutter/material.dart';
import 'package:project_learning_g1/model/NewsModel.dart';

class ImageDetail extends StatelessWidget {

  const ImageDetail({super.key, required this.data});

  final NewsModel data;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: Column(
        children: [
          Image.network(data.urlToImage??""),
          Text(data.author??""),
          Text(data.title??""),
        ],
      ),
    );
  }
}
