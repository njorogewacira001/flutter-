import 'package:flutter/material.dart';

class VerificationPage extends StatelessWidget {
  final String widgetName;

  const VerificationPage({required this.widgetName, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verification Page'),
      ),
      body: Center(
        child: Text(widgetName),
      ),
    );
  }
}
