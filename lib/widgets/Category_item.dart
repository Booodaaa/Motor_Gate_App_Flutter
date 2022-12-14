import 'package:flutter/material.dart';
class CategoryItem extends StatelessWidget {

  final String title ;
  final String imageUrl;


  const CategoryItem( {Key? key , required this.imageUrl, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          imageUrl,
          height: 250,
          fit: BoxFit.cover,
        ),
        Container(
          child: Text(title),
        )

      ],
    );
  }
}
