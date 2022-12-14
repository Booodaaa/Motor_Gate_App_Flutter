import 'package:flutter/material.dart';
import 'package:flutter_app/Effects/colors.dart';
import 'package:flutter_app/Effects/dimensions.dart';
import 'package:flutter_app/widgets/BigText.dart';
import 'package:flutter_app/widgets/account_wid.dart';
import 'package:flutter_app/widgets/app_icon.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.mainColor,
        title: BigText(text: "Profile" , size: 24, color: Colors.white),
      ),
      body: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: Dimensions.height20),
        child: Column(
          children: [
            AppIcon(icon: Icons.person,
            backgroundColor: AppColors.mainColor,
            iconColor: Colors.white,
            iconSize: Dimensions.height45 + Dimensions.height30,
            size: Dimensions.height15 * 10,
            ),
            SizedBox(height: Dimensions.height30,),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: [
                  AccountWidget(
                      appIcon: AppIcon(icon: Icons.person,
                        backgroundColor: AppColors.mainColor,
                        iconColor: Colors.white,
                        iconSize: Dimensions.height10 * 5 / 2,
                        size: Dimensions.height10 * 5,
                      ),
                      bigText: BigText(text: "Abdelrahman",)),
                  SizedBox(height: Dimensions.height20,),

                  AccountWidget(
                      appIcon: AppIcon(icon: Icons.phone,
                        backgroundColor: Colors.yellow,
                        iconColor: Colors.white,
                        iconSize: Dimensions.height10 * 5 / 2,
                        size: Dimensions.height10 * 5,
                      ),
                      bigText: BigText(text: "01159443692",)),

                  SizedBox(height: Dimensions.height20,),
                  AccountWidget(
                      appIcon: AppIcon(icon: Icons.email,
                        backgroundColor: Colors.yellow,
                        iconColor: Colors.white,
                        iconSize: Dimensions.height10 * 5 / 2,
                        size: Dimensions.height10 * 5,
                      ),
                      bigText: BigText(text: "Abdelrahman236@gmail.com",)),
                  SizedBox(height: Dimensions.height20,),

                  AccountWidget(
                      appIcon: AppIcon(icon: Icons.location_on,
                        backgroundColor: Colors.yellow,
                        iconColor: Colors.white,
                        iconSize: Dimensions.height10 * 5 / 2,
                        size: Dimensions.height10 * 5,
                      ),
                      bigText: BigText(text: "Add Your Location",)),
                  SizedBox(height: Dimensions.height20,),

                  AccountWidget(
                      appIcon: AppIcon(icon: Icons.favorite,
                        backgroundColor: Colors.redAccent,
                        iconColor: Colors.white,
                        iconSize: Dimensions.height10 * 5 / 2,
                        size: Dimensions.height10 * 5,
                      ),
                      bigText: BigText(text: "Your Favorite Cars",)),
                  SizedBox(height: Dimensions.height20,),
                  
                ],
              ),
            ))


            
            
          ],
        ),
      ),
    );
  }
}