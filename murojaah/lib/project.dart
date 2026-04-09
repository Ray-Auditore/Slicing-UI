import 'package:flutter/material.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          SizedBox(height: 16),

          // PAGE VIEW
          SizedBox(
            height: 180,
            width: double.infinity,
            child: PageView(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Text(
                      "Bagian 1",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Text(
                      "Bagian 2",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Text(
                      "Bagian 3",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),

        SizedBox(height: 16),

SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    children: [
      SizedBox(width: 8),

      Container(
        width: 150,
        height: 120,
        decoration: BoxDecoration(
          color: Colors.purpleAccent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            'Bagian 2',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),

      SizedBox(width: 8),

      Container(
        width: 150,
        height: 120,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            'Bagian 3',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),

      SizedBox(width: 8),

      Container(
        width: 150,
        height: 120,
        decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            'Bagian 4',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),

      SizedBox(width: 8),

      Container(
        width: 150,
        height: 120,
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            'Bagian 5',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),

      SizedBox(width: 8),
    ],
  ),
),

SizedBox(height: 20),

          // BUTTON MENU
         Row(
  children: [
    Expanded(
      child: Container(
        height: 50,
        color: Colors.redAccent,
        child: Center(
          child: Text(
            'Menu 1',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ),

    Expanded(
      child: Container(
        height: 50,
        color: Colors.blueAccent,
        child: Center(
          child: Text(
            'Menu 2',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ),

    Expanded(
      child: Container(
        height: 50,
        color: Colors.green,
        child: Center(
          child: Text(
            'Menu 3',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ),
  ],
)
        ],
      ),
    );
  }
}
