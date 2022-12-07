import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Effects/colors.dart';
import 'package:flutter_app/Effects/dimensions.dart';
import 'package:flutter_app/widgets/smalltext.dart';

class ExpenText extends StatefulWidget {
  final String text;
  const ExpenText({Key? key,  required this.text}) : super(key: key);

  @override
  State<ExpenText> createState() => _ExpenTextState();
}

class _ExpenTextState extends State<ExpenText> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;

  double textHeight = Dimensions.screenHeight/5.63;

  @override
  void initState(){
    super.initState();
    if(widget.text.length>textHeight){
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt()+1, widget.text.length);
    }else{
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?SmallText(size: Dimensions.font16, text: firstHalf) : Column(
        children: [
          SmallText(height: 1.8, size: Dimensions.font16, text: hiddenText? (firstHalf+"...") : (firstHalf + secondHalf) ),
          InkWell(
            onTap: (){
              setState(() {
                hiddenText = ! hiddenText;
              });
            },
            child: Row(
              children: [
                SmallText(text: "Show More", color: AppColors.mainColor),
                Icon(hiddenText? Icons.arrow_drop_down : Icons.arrow_drop_up , color: AppColors.mainColor)
              ],
            ),
          )
        ],
      ),
    );
  }
}
