import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/expandable_text_widget.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

class Utilities extends StatelessWidget {
  const Utilities({Key? key, required String widgetName});

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
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://images.unsplash.com/photo-1579621970588-a35d0e7ab9b6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"),
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            top: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context); // Navigate back to the previous screen
                  },
                  child: Icon(Icons.arrow_back_ios),
                ),
                Icon(Icons.shopping_cart_outlined),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 300, // Adjust the top value to position the blue container
            bottom: 0, // Adjust the bottom value to position the blue container
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(20),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Utilities"),
                  SmallText(text: "Countries\nPayout Countries\nBanks\nCurrency Pairs"),



                  SizedBox(height: 10),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                          5,
                          (index) => Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 10,
                          ),
                        ),
                      ),
                      SizedBox(width: 9),
                      SmallText(text: "4.5"),
                      SizedBox(width: 1),
                      SmallText(text: "2970"),
                      SizedBox(width: 2),
                      SmallText(text: "comments"),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconAndTextWidget(
                        icon: Icons.circle_sharp,
                        text: "Normal",
                        iconColor: Colors.yellow,
                      ),
                      IconAndTextWidget(
                        icon: Icons.location_on,
                        text: "Nairobi",
                        iconColor: Colors.blueGrey,
                      ),
                      IconAndTextWidget(
                        icon: Icons.lock,
                        text: "Secure",
                        iconColor: Colors.blueGrey,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      BigText(text: "Requirements"),
                      SingleChildScrollView(child: ExpandableWidget(text: "for Most Areas within the Application, you will need Authentication and Authorization. "))

                    ],
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
      bottomNavigationBar: Container(
        height: 55,
        padding: EdgeInsets.only(top: 30, left: 20, right: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.back_hand),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
