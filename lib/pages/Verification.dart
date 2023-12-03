import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpHelper {
  Future<Map<String, dynamic>> fetchTokens(String clientId, String clientSecret) async {
    final url = Uri.parse('https://testbed.flex-money.tech/tokens?clientId=$clientId&clientSecret=$clientSecret');
    final headers = {
      'Accept': 'application/json',
    };

    final response = await http.get(url, headers: headers);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception('Failed to fetch tokens');
    }
  }
}

class Verification extends StatefulWidget {
  const Verification({Key? key, required String widgetName});

  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  late Future<Map<String, dynamic>> _futureTokens;
  final String clientId = '3pBAyrI0qVlr7RS246DKFoHq6IumwsYA'; // Replace with your actual client ID
  final String clientSecret = 'eRprAvGXS5am5wpKy9fJBIneHL5I_egGgR6ewiUrh_ZmUMS3uu9RTO81GIiWl9l2'; // Replace with your actual client secret

  @override
  void initState() {
    super.initState();
    _fetchTokens();
  }

  Future<void> _fetchTokens() async {
    try {
      final httpHelper = HttpHelper();
      final tokens = await httpHelper.fetchTokens(clientId, clientSecret);
      print(tokens);
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verification'),
      ),
      body: Stack(
        children: [
          // Rest of your code...
        ],
      ),
      bottomNavigationBar: Container(
        // Rest of your code...
      ),
    );
  }
}
