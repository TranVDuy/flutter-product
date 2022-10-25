import 'package:flutter/cupertino.dart';
import 'package:project_learning_g1/model/NewsModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NewsProvider extends ChangeNotifier{
  List<NewsModel> list = [];
  
  void getList() async{
    String apiURL = "https://newsapi.org/v2/everything?q=tesla&from=2022-10-18&sortBy=publishedAt&apiKey=584ee8ffe8224fac98b830a9c8449564";
    var client = http.Client();
    var jsonString = await client.get(Uri.parse(apiURL));
    var jsonObject = jsonDecode(jsonString.body);
    var newListObject = jsonObject['articles'] as List;
    list = newListObject.map((e) {
      return NewsModel.fromJson(e);
    }).toList();
    notifyListeners();
  }
}