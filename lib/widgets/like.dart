import 'package:flutter/material.dart';

class like extends StatefulWidget {
  const like(
      {super.key,
      required double size,
      required bool isLiked,
      required  Function(dynamic isLiked) LikeBuilder});

  @override
  State<like> createState() => _likeState();
}

class _likeState extends State<like> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    final double size = 40;
    return like(
        size: size,
        isLiked: isLiked,
        LikeBuilder: (isLiked) {
          final color = Colors.grey;
          return Icon(Icons.favorite , color : color , size: size,);
        } ,
         
        );
  }
}
