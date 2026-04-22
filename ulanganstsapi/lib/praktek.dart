import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Praktek extends StatefulWidget {
  const Praktek({super.key});

  @override
  State<Praktek> createState() => _PraktekState();
}

class _PraktekState extends State<Praktek> {
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
      appBar: AppBar(
        title: Text('Praktek STS Api', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
      ),

      body: isLoading
          ?  Center(child: CircularProgressIndicator())
          : ListView(
              children: data.take(10).map((item) {
                return Card(
                  margin:  EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 8,
                  ),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(
                        item['thumbnail'],
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),

                    title: Text(
                      item['title'],
                      style:  TextStyle(fontWeight: FontWeight.bold),
                    ),

                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         SizedBox(height: 5),
                        Text(
                          "Rating: ${item['rating']} ⭐",
                          style:  TextStyle(fontSize: 12),
                        ),
                        Text(
                          "Rp ${item['price'] * 15000}",
                          style:  TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),

                    trailing: Text(
                      "Stok: ${item['stock']}",
                      style:  TextStyle(color: Colors.grey),
                    ),
                  ),
                );
              }).toList(),
            ),
    );
  }
}
