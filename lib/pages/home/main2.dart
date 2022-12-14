// ignore_for_file: prefer_const_constructors

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/BigText.dart';
import 'package:flutter_app/Effects/dimensions.dart';
import 'package:flutter_app/Effects/colors.dart';
import 'package:flutter_app/widgets/like.dart';

class cars_page extends StatefulWidget {
  const cars_page({super.key});

  @override
  State<cars_page> createState() => _cars_pageState();
}

class _cars_pageState extends State<cars_page> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scalePageFactor = 0.8;
  double _height = Dimensions.pageViewContainer;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //color: Colors.redAccent,
          height: Dimensions.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: ((context, position) {
                return _buildPageItem(position);
              })),
        ),

        // ignore: unnecessary_new
        new DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),

        SizedBox(
          height: Dimensions.height30,
        ),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            children: [
              Text("popular Cars In Egypt :",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(
                width: Dimensions.width10,
              ),
            ],
          ),
        ),
       
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
              itemCount: 10,
              itemBuilder: ((context, index) {
                return Container(
                  margin: EdgeInsets.only(left: Dimensions.width20 , right: Dimensions.width20, bottom: Dimensions.height10),
                  child : Row(
                      children: [
                        Container(
                          width: Dimensions.listViewImgSize,
                          height: Dimensions.listViewImgSize,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimensions.radius20),
                            color: Colors.white38,
                            image: DecorationImage(fit: BoxFit.cover, image: AssetImage("images/verna.jpg"))
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: Dimensions.listViewTextContSize,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(Dimensions.radius20),
                                bottomRight: Radius.circular(Dimensions.radius20),
                              ),
                              color: Colors.white
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: Dimensions.width10 , right: Dimensions.width10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: Dimensions.height10,),
                                  BigText(text: "Verna"),
                                  SizedBox(height: Dimensions.height10,),
                                  Row(children: [Text("Verna is south Korean car,"),],),
                                  Row(children: [Text("and it one of the most ")],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [Text("popular cars in Egypt") , Icon(Icons.favorite , size: 20, color: Colors.grey,)],
                                  )
                                  
                                ],
                              ),
                              ),
                          ),
                        )
                    ],
                    )
                );
              })),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scalePageFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale = _scalePageFactor +
          (_currPageValue - index + 1) * (1 - _scalePageFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scalePageFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scalePageFactor) / 2, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          SingleChildScrollView(
          scrollDirection: Axis.vertical,
        child: Row(
          children: [
        Container(
        height: Dimensions.pageViewContainer,
        margin: EdgeInsets.only(
            right: Dimensions.width10, left: Dimensions.width10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius30),
            color: Color(0xFF69c5df),
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("images/508.jpg"))),),
            Container(
              height: Dimensions.pageViewContainer,
              margin: EdgeInsets.only(
                  right: Dimensions.width10, left: Dimensions.width10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius30),
                  color: Color(0xFF69c5df),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage("images/911.jpg"))),),
            Container(
              height: Dimensions.pageViewContainer,
              margin: EdgeInsets.only(
                  right: Dimensions.width10, left: Dimensions.width10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius30),
                  color: Color(0xFF69c5df),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage("images/m8.jpg"))),),
            Container(
              height: Dimensions.pageViewContainer,
              margin: EdgeInsets.only(
                  right: Dimensions.width10, left: Dimensions.width10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius30),
                  color: Color(0xFF69c5df),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage("images/mk5.jpg"))),),
            Container(
              height: Dimensions.pageViewContainer,
              margin: EdgeInsets.only(
                  right: Dimensions.width10, left: Dimensions.width10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius30),
                  color: Color(0xFF69c5df),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage("images/r34.jpg"))),),

          ],
      ),
      ),


          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(
                  right: Dimensions.width30,
                  left: Dimensions.width30,
                  bottom: Dimensions.height30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white,
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFFe8e8e8),
                        blurRadius: 5.0,
                        offset: Offset(0, 5)),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5, 0),
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(5, 0),
                    ),
                  ]),
              child: Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height15,
                    left: Dimensions.height15,
                    right: Dimensions.height15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "peugeot 508",
                      style: TextStyle(fontSize: Dimensions.font20),
                    ),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Row(
                      children: [
                        Text("508 GT MAX 1.6L Turbo 215hp",
                            style: TextStyle(fontSize: Dimensions.font15)),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.height15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Price : EGP 914,990",
                          style: TextStyle(fontSize: Dimensions.font15),
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.grey,
                          size: Dimensions.iconSize24,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
