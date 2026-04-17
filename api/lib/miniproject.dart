import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Testingapi2 extends StatefulWidget {
  const Testingapi2({super.key});

  @override
  State<Testingapi2> createState() => _Testingapi2State();
}

class _Testingapi2State extends State<Testingapi2> {
  List data = [];
  bool isLoading = true;

  Future ambilData() async {
    var response = await http.get(Uri.parse('https://dummyjson.com/products'));

    if (response.statusCode == 200) {
      var hasil = jsonDecode(response.body);
      setState(() {
        data = hasil['products'];
        isLoading = false;
      });
    } else {
      throw Exception('gagal mengambil data');
    }
  }

  @override
  void initState() {
    super.initState();
    ambilData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Latihan Ambil Data')),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              children: [
                // 🔥 SLIDER
                Container(
                  height: 250,
                  child: PageView(
                    children: data.take(5).map((item) {
                      return Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              item['images'][0],
                              width: double.infinity,
                              height: 250,
                              fit: BoxFit.cover,
                            ),
                          ),

                         
                          Positioned(
                            bottom: 10,
                            left: 10,
                            right: 10,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              color: Colors.black.withOpacity(0.5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item['title'],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "\$${item['price']}",
                                    style: TextStyle(
                                      color: Colors.yellow,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                ),

                ...data.take(5).map((item) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    color: Colors.red,
                    child: Column(
                      children: [
                        Image.network(item['images'][0], height: 150),
                        Text(item['title']),
                       
                      ],
                    ),
                  );
                }).toList(),
              ],
            ),
    );
  }
}