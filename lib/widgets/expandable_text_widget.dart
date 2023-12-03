

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/small_text.dart';

class ExpandableWidget extends StatefulWidget {
  final String text;
  const ExpandableWidget({super.key, required this.text});

  @override
  State<ExpandableWidget> createState() => _ExpandableWidgetState();
}

class _ExpandableWidgetState extends State<ExpandableWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;
  
  double textHeight = 5;

   @override
   void initState(){
    super.initState();
    if(widget.text.length>textHeight){
      firstHalf=widget.text.substring(0,textHeight.toInt());
      secondHalf=widget.text.substring(textHeight.toInt()+1, widget.text.length);

    }else{
      firstHalf=widget.text;
      secondHalf="";
    }
   }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?SmallText(text: firstHalf):Column(
        children: [
          SmallText(color: Colors.black,text: hiddenText?(firstHalf+"..."):(firstHalf+secondHalf)),
          InkWell(
            onTap: (){
              setState(() {
                hiddenText=!hiddenText;
              });

            },
            child: Row(
              children: [
                SmallText(text: "Show more",color: Colors.black,),
                Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_down,color: Colors.black,),
                ],),
          )
        ],
      ),
    );
  }
}