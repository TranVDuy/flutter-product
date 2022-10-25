import 'package:flutter/material.dart';
import 'package:project_learning_g1/model/DestinationModel.dart';

class DestiantionLocal extends StatefulWidget {
  @override
  _DestiantionLocalState createState() => _DestiantionLocalState();
}

class _DestiantionLocalState extends State<DestiantionLocal> {

  List<DestinationModel> lst = DestinationModel.MockData();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg.jpg"),
          fit: BoxFit.cover,
          
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...lst.map((e) =>
                Column(
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      margin: EdgeInsets.fromLTRB(100, 50, 50, 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(e.image),
                              fit: BoxFit.cover
                          ),
                      ),
                    ),
                  ],
                ),

                )
          ],
        ),
      ),
    );
  }
}
