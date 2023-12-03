import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/big_text.dart';

class GettingToken extends StatelessWidget {
  const GettingToken({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 60,
            title: Row(
              children: [
                Icon(Icons.clear)]),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                color: Colors.blue,
                child: Center(child: Text("Token")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5,bottom: 10),
              ),
            ),
            pinned: true,
            backgroundColor: Color.fromARGB(255, 146, 93, 93),
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                "https://images.unsplash.com/photo-1635840418679-d6e52fbbb6fc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=869&q=80",
                width: double.maxFinite,
                fit: BoxFit.cover,
                )),
          ),
          SliverToBoxAdapter(
            child: Text("For Most Areas within the Application, you will need Authentication and Authorization For Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationvvvvvFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationFor Most Areas within the Application, you will need Authentication and AuthorizationvFor Most Areas within the Application, you will need Authentication and Authorization"
            ),
            )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 10,
              bottom: 10,

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.remove),
                Icon(Icons.add),
                BigText(text: "Token")
              ],),
          )
        ],
      ),
    );
  }
}