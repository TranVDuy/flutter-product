
import 'package:flutter/material.dart';

class GenreSlide extends StatefulWidget {

  GenreSlide({Key? key}) : super(key: key);

  @override
  _GenreSlideState createState() => _GenreSlideState();
}

class _GenreSlideState extends State<GenreSlide> {

  List<String>_list = [
    'Hoholala',
    'Facebook',
    'Instagram',
    'Telegram',
    'OnlyFans',
    'Twitter',
    'Hoholala',
    'Facebook',
    'Instagram',
    'Telegram',
    'OnlyFans',
    'Twitter',
  ];

  String genreSelected = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ..._list.map((e) =>
              InkWell(
                onTap: () => {
                  setState(()=>{
                    genreSelected = e
                  })
                },
                child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: (genreSelected == e ? Colors.white : Colors.grey),
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Text(e,
                    style: TextStyle(fontSize: 20,
                        color: (genreSelected == e ? Colors.black : Colors.white)
                    ),
                  ),
                ),
              )
            )
          ],
        ),
      ),

    );
  }
}
