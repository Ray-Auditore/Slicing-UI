import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LatihanApi extends StatefulWidget {
  const LatihanApi({super.key});

  @override
  State<LatihanApi> createState() => _LatihanApiState();
}

class _LatihanApiState extends State<LatihanApi> {
  List data = [];
  bool isLoading = true;

  Future ambilData() async {
    var response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    );

    var hasil = jsonDecode(response.body);

    setState(() {
      data = hasil;
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    ambilData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Latihan API')),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              children: data.map((item) {
                return ListTile(
                  title: Text(item['userId'].toString()),

                  subtitle: Text(item['body']),
                );
              }).toList(),
            ),
    );
  }
}