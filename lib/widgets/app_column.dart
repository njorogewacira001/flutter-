import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/big_text.dart';
import 'package:flutter_application_1/widgets/icon_and_text_widget.dart';
import 'package:flutter_application_1/widgets/small_text.dart';

class AppColumn extends StatelessWidget {
  const AppColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                BigText(text: "Authentication"),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Wrap(
                      children: List.generate(5, (index) {return  Icon(Icons.star,color: Colors.yellow,size: 10,);}),
                    ),
                    SizedBox(width: 9,),
                    SmallText(text: "4.5"),
                    SizedBox(width: 1,),
                    SmallText(text: "2970"),
                    SizedBox(width: 2,),
                    SmallText(text: "comments")
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconAndTextWidget(
                      icon:Icons.circle_sharp,
                      text: "Normal",
                      iconColor:Colors.yellow
                      ),
                      IconAndTextWidget(
                      icon:Icons.location_on,
                      text: "Nairobi",
                      iconColor:Colors.blueGrey
                      ),
                      IconAndTextWidget(
                      icon:Icons.lock,
                      text: "Secure",
                      iconColor:Colors.blueGrey
                      )
                  ],
                ),
                
              ],
            );
  }
}