import 'package:flutter/cupertino.dart';
import 'package:project_learning_g1/model/CategoryModel.dart';
import 'package:project_learning_g1/model/ProductModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductProvider extends ChangeNotifier{

    List<ProductModel> list = [];
    List<CategoryModel> listCategory = [];

    // void getList(String category, String searchValue) async{
    //     String apiURL = "";
    //     category == "all" ? apiURL="https://fakestoreapi.com/products" :
    //         apiURL = "https://fakestoreapi.com/products/category/${category}";
    //     var client = http.Client();
    //     var jsonString = await client.get(Uri.parse(apiURL));
    //     var jsonObject = jsonDecode(jsonString.body);
    //     var productListObject = jsonObject as List;
    //
    //     list = productListObject.map((e) {
    //       return ProductModel.fromJson(e);
    //     }).toList();
    //
    //     if(searchValue != ""){
    //         list = list.where((element) =>
    //             element.title.toString().toLowerCase().contains(searchValue.toLowerCase())).toList();
    //     }
    //
    //     notifyListeners();
    // }

    void getList() async{
        String apiURL = "https://fakestoreapi.com/products";
        var client = http.Client();
        var jsonString = await client.get(Uri.parse(apiURL));
        var jsonObject = jsonDecode(jsonString.body);
        var productListObject = jsonObject as List;

        list = productListObject.map((e) {
            return ProductModel.fromJson(e);
        }).toList();

        // if(searchValue != ""){
        //     list = list.where((element) =>
        //         element.title.toString().toLowerCase().contains(searchValue.toLowerCase())).toList();
        // }

        notifyListeners();
    }

    // List<ProductModel> getList(String category, String searchValue){
    //     List<ProductModel> listP = list;
    //
    //
    //     return listP;
    // }

    List<ProductModel> getListProduct(String category, String searchValue){
        List<ProductModel> listProdGird = [];
        if (category == "all") {
            listProdGird = list;
        }
        else {
            if (category != "all") {
                listProdGird = list.where((element) =>
                element.category == category).toList();
            }
            else {
                if (searchValue != "") {
                    listProdGird = list.where((element) =>
                        element.title.toString().toLowerCase().contains(
                            searchValue.toLowerCase())).toList();
                }
            }
        }

        return listProdGird;
    }


    // void getAllCategory() async {
    //     listCategory.add(new CategoryModel(name: "all"));
    //     String apiURL = "https://fakestoreapi.com/products/categories";
    //     var client = http.Client();
    //     var jsonString = await client.get(Uri.parse(apiURL));
    //     var jsonObject = jsonDecode(jsonString.body);
    //     var categoryListObject = jsonObject as List;
    //
    //     listCategory = categoryListObject.map((e) {
    //         return CategoryModel.fromJson(e);
    //     }).toList();
    //
    //     // List<String> lst = <String>['all'];
    //     // lst.add("men's clothing");
    //     // lst.add("jewelery");
    //     // lst.add("electronics");
    //     // lst.add("women's clothing");
    //     //
    //     // return lst;
    // }

    List<String> getAllCategory(){
        List<String> lst = <String>['all'];
            lst.add("men's clothing");
            lst.add("jewelery");
            lst.add("electronics");
            lst.add("women's clothing");

            return lst;
    }
}
