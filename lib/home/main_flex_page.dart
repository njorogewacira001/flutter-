import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/big_text.dart';
import 'package:flutter_application_1/widgets/small_text.dart';

import 'flex_page_body.dart';

class MainFlexPage extends StatefulWidget {
  const MainFlexPage({super.key});

  @override
  State<MainFlexPage> createState() => _MainFlexPageState();
}

class _MainFlexPageState extends State<MainFlexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(

            child: Container(
              margin: EdgeInsets.only(top:45, bottom:10),
              padding: EdgeInsets.only(left:20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "KENYA"),
                      Row(
                        children: [
                          SmallText(text: "Nairobi"),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    child: Icon(Icons.search, color: Colors.white,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                    ),
    
                  )
                ],
              ),
            ),
          ),
          Expanded(child: SingleChildScrollView(
            child: FlexPageBody(navigateToDetailPage: (int index) {  },),
          )),
        ],
      ),
    );
  }
}