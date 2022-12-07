// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_app/Effects/colors.dart';
import 'package:flutter_app/Effects/dimensions.dart';
import 'package:flutter_app/widgets/app_column.dart';
import 'package:flutter_app/widgets/app_icon.dart';
import 'package:flutter_app/widgets/expen_text.dart';

import '../../widgets/BigText.dart';

class popularcarsDetail extends StatelessWidget {
  const popularcarsDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularCarsImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image:AssetImage("images/verna.jpg")
                  ),
              ),

            ),
          ),
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.favorite)
              ],
          )),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularCarsImgSize - 20,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20),
                  topLeft: Radius.circular(Dimensions.radius20)
                ),
                color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: "Verna"),
                  SizedBox(height: Dimensions.height20,),
                  BigText(text: "Informations"),
                  SizedBox(height: Dimensions.height20,),
                  Text("The Average price in Egypt is 168,000" , style: TextStyle(fontSize: Dimensions.font16 , color: AppColors.ParaColor),),
                  SizedBox(height: Dimensions.height10),
                  Expanded(child: SingleChildScrollView(child:
                  ExpenText(text:"The Hyundai Verna 2010-2011 has 1 Diesel Engine and 1 Petrol Engine on offer. The Diesel engine is 1493 cc while the Petrol engine is 1599 cc . It is available with Manual & Automatic transmission.Depending upon the variant and fuel type the Verna 2010-2011 has a mileage of 16.2 kmpl & Ground clearance of Verna 2010-2011 is 170 mm. The Verna 2010-2011 is a 5 seate"))),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(top: Dimensions.height30 , bottom: Dimensions.height30, left: Dimensions.width20, right: Dimensions.width20),
        decoration: BoxDecoration(
            color:AppColors.buttonBackGroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20*2),
            topRight: Radius.circular(Dimensions.radius20*2),
          )
        ),
        child: Container(
          padding: EdgeInsets.only(top: Dimensions.height20 , left: Dimensions.width45 * 3),
          child: BigText(text: "Buy This Car" , color: Colors.white,),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius20),
            color: AppColors.mainColor,
          ),
        )
      ),
    );
  }
}