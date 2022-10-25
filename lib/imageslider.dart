import 'package:flutter/material.dart';

class SliderDestination extends StatelessWidget {

  SliderDestination({Key? key}) : super(key: key);

  List<String> _list = [
    'assets/images/land1.jpg',
    'assets/images/land2.jpg',
    'assets/images/land3.jpg',
    'assets/images/land4.jpg',
    'assets/images/land5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
              ..._list.map((e) =>
                Container(
                  height: MediaQuery.of(context).size.height/3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(e),
                      fit: BoxFit.cover
                    )
                  ),
                )
              )
          ],
        ),
      ),
    );
  }
}
