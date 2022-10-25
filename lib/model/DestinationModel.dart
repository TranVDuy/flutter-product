
class DestinationModel{
  final String id;
  final String name;
  final String image;
  final List<String> genre;
  final int rating;

  DestinationModel(this.id, this.name, this.image, this.genre, this.rating);

  static List<DestinationModel> MockData(){
    List<DestinationModel> ls = [];
    ls.add(DestinationModel(
        "1",
        "Dai Hoc Khoa Hoc",
        "assets/images/v1.jpg",
        ["abc", "cde", "bla bla ..."],
        5));
    ls.add(DestinationModel(
        "2",
        "Dai Hoc Ngoai Ngu",
        "assets/images/v2.jpg",
        ["abc", "cde", "bla bla ..."],
        2));
    ls.add(DestinationModel(
        "3",
        "Dai Hoc Kinh Te",
        "assets/images/v3.jpg",
        ["abc", "cde", "bla bla ..."],
        3));
    ls.add(DestinationModel(
        "4",
        "Dai Hoc Luat",
        "assets/images/v4.jpg",
        ["abc", "cde", "bla bla ..."],
        1));
    ls.add(DestinationModel(
        "5",
        "Dai Hoc Su Pham",
        "assets/images/v5.jpg",
        ["abc", "cde", "bla bla ..."],
        5));
    ls.add(DestinationModel(
        "6",
        "Dai Hoc Nong Lam",
        "assets/images/v6.jpg",
        ["abc", "cde", "bla bla ..."],
        1));

    return ls;
  }
}