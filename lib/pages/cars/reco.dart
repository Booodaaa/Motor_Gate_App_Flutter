import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Effects/dimensions.dart';
import 'package:flutter_app/widgets/BigText.dart';
import 'package:flutter_app/widgets/app_icon.dart';

import '../../Effects/colors.dart';
import '../../widgets/expen_text.dart';

class Reco_cars extends StatelessWidget {
  const Reco_cars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.favorite)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(child: BigText(size: Dimensions.font26, text: "Verna",)),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5 , bottom: 10),
                decoration: BoxDecoration(
                    color : Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  )
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.mainColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                  "images/verna.jpg",
                  width: double.maxFinite,
                  fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  
                  child: ExpenText(text: "The Hyundai Verna 2010-2011 has 1 Diesel Engine and 1 Petrol Engine on offer. The Diesel engine is 1493 cc while the Petrol engine is 1599 cc . It is available with Manual & Automatic transmission.Depending upon the variant and fuel type the Verna 2010-2011 has a mileage of 16.2 kmpl & Ground clearance of Verna 2010-2011 is 170 mm. The Verna 2010-2011 is a 5 seate",),
                  margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20)
                )
              ],
            ),
            )
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
          //padding: EdgeInsets.only(top: Dimensions.height20 , left: Dimensions.width45 * 2.5),
          child: Container(alignment: Alignment.center, child: BigText(text: "Add To Favorite" , color: Colors.white,)),
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius20),
          color: AppColors.mainColor,
          ),
        )
      ),
    );
  }
}
