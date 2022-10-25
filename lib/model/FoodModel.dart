class FoodModel{
  final int id;
  final String name;
  final String image;
  final int stars;

  FoodModel(this.id, this.name, this.image, this.stars);

  static List<FoodModel> MockData(){
    List<FoodModel> list = [];
    list.add(FoodModel(1, "Yoshimasa Sushi", "assets/images/sushi1.png", 5));
    list.add(FoodModel(2, "Yoshimasa Sushi", "assets/images/sushi2.png", 5));
    list.add(FoodModel(3, "Prato Sushi", "assets/images/sushi3.png", 5));
    return list;
  }

}