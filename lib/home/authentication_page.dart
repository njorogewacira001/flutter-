import 'package:flutter/material.dart';


class AuthenticationPage extends StatelessWidget {
  final String widgetName;

  const AuthenticationPage({required this.widgetName, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('authentication Page'),
      ),
      body: Center(
        child: Text(widgetName),
      ),
    );
  }
}

