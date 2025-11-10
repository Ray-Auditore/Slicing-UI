import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(color: Colors.blueAccent.shade100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: const Text("🚆", style: TextStyle(fontSize: 24)),
          ),

          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Color(0xff93c0ff),
                  shape: BoxShape.circle,
                ),
                child: Text("🛒", style: TextStyle(fontSize: 20)),
              ),
              const SizedBox(width: 8),

              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Color(0xff93c0ff),
                  shape: BoxShape.circle,
                ),
                child: Text("🔔", style: TextStyle(fontSize: 20)),
              ),
              const SizedBox(width: 8),

              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Color(0xff93c0ff),
                  shape: BoxShape.circle,
                ),
                child: Text("⚙️", style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
