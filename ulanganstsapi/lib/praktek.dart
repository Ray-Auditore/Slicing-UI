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
          ? Center(child: CircularProgressIndicator())
          : GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(10),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
             

              children: data.take(10).map((item) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 3,

                  child: Padding(
                    padding: EdgeInsets.all(8),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              item['thumbnail'],
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        SizedBox(height: 5),

                        Text(
                          item['title'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),

                        SizedBox(height: 3),

                        Text(
                          "⭐ ${item['rating']}",
                          style: TextStyle(fontSize: 12),
                        ),

                        SizedBox(height: 3),

                        // Harga
                        Text(
                          "Rp ${item['price'] * 15000}",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        // Stok
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "Stok ${item['stock']}",
                            style: TextStyle(fontSize: 11, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
    );
  }
}
