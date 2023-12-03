import 'package:flutter/material.dart';

class PayoutsPage extends StatelessWidget {
  final String widgetName;

  const PayoutsPage({required this.widgetName, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payouts Page'),
      ),
      body: Center(
        child: Text(widgetName),
      ),
    );
  }
}
