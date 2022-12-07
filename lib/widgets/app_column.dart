import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Effects/dimensions.dart';
import 'BigText.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: Dimensions.height10,),
        BigText(text: text , size: Dimensions.font26,),
        SizedBox(height: Dimensions.height10,),
        Row(children: [Text("Verna is south Korean car , and it one of the most"),],),
        SizedBox(height: Dimensions.height10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("popular cars in Egypt")],
        ),
        SizedBox(height: Dimensions.height10,),

      ],
    );
  }
}
