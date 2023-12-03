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

class PostList extends StatefulWidget {
  final String clientId;
  final String clientSecret;

  PostList({Key? key, required this.clientId, required this.clientSecret}) : super(key: key);

  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  late Future<Map<String, dynamic>> _futureTokens;

  @override
  void initState() {
    super.initState();
    _futureTokens = HttpHelper().fetchTokens(widget.clientId, widget.clientSecret);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tokens'),
      ),
      body: FutureBuilder<Map<String, dynamic>>(
        future: _futureTokens,
        builder: (BuildContext context, AsyncSnapshot<Map<String, dynamic>> snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Error occurred: ${snapshot.error}'));
          }
          if (snapshot.hasData) {
            final tokens = snapshot.data;
            return Center(child: Text('Tokens: $tokens'));
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
