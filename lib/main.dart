// ignore_for_file: prefer_const_constructors
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/cars/popular_cars.dart';
import 'package:flutter_app/pages/cars/reco.dart';
import 'package:flutter_app/pages/home/main2.dart';
import 'package:flutter_app/widgets/BigText.dart';
import 'package:flutter_app/Effects/colors.dart';
import 'package:flutter_app/widgets/dimensions.dart';
import 'package:get/get.dart';
import 'Effects/dimensions.dart';
import 'widgets/like.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Reco_cars(),
      
    );
  }
}

class Test extends StatefulWidget {
  const Test({super.key});
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  bool notfi = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [ //lager logp
        Container(
          margin: EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height15),
          padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Row(
                    children: [
                      Image.asset("images/logo.png", width: 100),
                      Padding(padding: EdgeInsets.only(right: 5)),
                      BigText(text: "Motor Gate",)
                    ],
                  ),
                ],
              ),
              Center(
                child: Container(
                  width: Dimensions.width45,
                  height: Dimensions.height45,
                  child: Icon(Icons.home,color: Colors.white, size: Dimensions.iconSize24,),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      color: AppColors.mainColor
                      //color: Colors.blue
                      ),
                ),
              )
            ],
          ),
        ),
        Expanded(child: SingleChildScrollView(
          child: cars_page(),
        ))
      ]),
    );
  }
}
