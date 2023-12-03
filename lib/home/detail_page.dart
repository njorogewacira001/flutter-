import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String widgetName;

  const DetailPage({required this.widgetName, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Center(
        child: Text(widgetName),
      ),
    );
  }
}
