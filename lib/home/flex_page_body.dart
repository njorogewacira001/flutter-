import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Verification.dart';
import 'package:flutter_application_1/pages/authentication/authentication.dart';
import 'package:flutter_application_1/pages/balance_check.dart';
import 'package:flutter_application_1/pages/utilities.dart';
import 'package:flutter_application_1/widgets/big_text.dart';
import 'package:flutter_application_1/widgets/icon_and_text_widget.dart';
import 'package:flutter_application_1/widgets/small_text.dart';

import '../pages/Forex.dart';
import '../pages/authentication/authentication_password.dart';
import '../pages/payouts.dart';
import 'authentication_page.dart';
import 'balance_check_page.dart';
import 'forex_page.dart';
import 'payouts_page.dart';
import 'verification_page.dart';

class FlexPageBody extends StatefulWidget {
  const FlexPageBody({Key? key, required Null Function(int index) navigateToDetailPage}) : super(key: key);

  @override
  State<FlexPageBody> createState() => _FlexPageBodyState();
}

class _FlexPageBodyState extends State<FlexPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!.toInt();
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 320,
          child: PageView.builder(
            controller: pageController,
            itemCount: 7,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            },
          ),
        ),
        SizedBox(height: 20),
        Container(
          margin: EdgeInsets.only(left: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Categories"),
              SizedBox(width: 10),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(
                  text: ".",
                  color: Colors.black26,
                ),
              ),
              SizedBox(width: 20),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: SmallText(
                  text: "Flex Money",
                ),
              ),
            ],
          ),
        ),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 7,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                _navigateToDetailPage(index); // Navigate to the detail page
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://images.unsplash.com/photo-1502920514313-52581002a659?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=867&q=80",
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          color: Colors.grey,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BigText(text: _getWidgetName(index)),
                              SizedBox(height: 10),
                              SmallText(text: "MD5 Password"),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  String _getWidgetName(int index) {
    switch (index) {
      case 0:
        return "Flex money";
      case 1:
        return "Authentication";
      case 2:
        return "Balance Check";
      case 3:
        return "Verification";
      case 4:
        return "Payouts";
      case 5:
        return "Forex";
      case 6:
        return "Utilities";
      default:
        return "";
    }
  }

  Widget _buildPageItem(int index) {
    if (index == _currPageValue.floor()) {}
    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                "https://images.unsplash.com/photo-1502920514313-52581002a659?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=867&q=80",
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 140,
            margin: EdgeInsets.only(left: 50, right: 50, bottom: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFe8e8e8),
                  blurRadius: 3,
                  offset: Offset(0, 5),
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(5, 0),
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(5, 0),
                ),
              ],
            ),
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 15, right: 5),
              child: Column(
                children: [
                  BigText(text: _getWidgetName(index)),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(5, (index) {
                          return Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 10,
                          );
                        }),
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
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _navigateToDetailPage(int index) {
  String widgetName = _getWidgetName(index);
  switch (widgetName) {
    case 'Authentication ':
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Authentication(widgetName: widgetName),
        ),
      );
      
      break;
    case 'Balance Check':
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BalanceCheck(widgetName: widgetName),
        ),
      );
      break;
    case 'Forex':
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Forex(widgetName: widgetName),
        ),
      );
      break;
    case 'Payouts':
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Payouts(widgetName: widgetName),
        ),
      );
      break;
    case 'Utilities':
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Utilities(widgetName: widgetName),
        ),
      );
      break;
    case 'Verification':
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Verification(widgetName: widgetName),
        ),
      );
      break;
    default:
      
      break;
  }
}


}