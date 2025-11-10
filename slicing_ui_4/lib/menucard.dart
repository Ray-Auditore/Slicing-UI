import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      decoration: BoxDecoration(
        color: const Color(0xffE5E5E5),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          // ===== ROW MENU ICON =====
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // ===== MENU 1 (PAKAI GAMBAR) =====
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xff9DBAFF),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(
                      "assets/orange-juice.png",
                      width: 28,
                      height: 28,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text("Minuman", style: TextStyle(fontSize: 14)),
                ],
              ),

              // ===== MENU 2 =====
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xff9DBAFF),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Text("🍔", style: TextStyle(fontSize: 28)),
                  ),
                  const SizedBox(height: 8),
                  const Text("Makanan", style: TextStyle(fontSize: 14)),
                ],
              ),

              // ===== MENU 3 =====
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xff9DBAFF),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Text("🍕", style: TextStyle(fontSize: 28)),
                  ),
                  const SizedBox(height: 8),
                  const Text("Fast Food", style: TextStyle(fontSize: 14)),
                ],
              ),

              // ===== MENU 4 =====
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xff9DBAFF),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Text("🧺", style: TextStyle(fontSize: 28)),
                  ),
                  const SizedBox(height: 8),
                  const Text("Buah & Sayur", style: TextStyle(fontSize: 14)),
                ],
              ),

              // ===== MENU 5 =====
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xff9DBAFF),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Text("🏪", style: TextStyle(fontSize: 28)),
                  ),
                  const SizedBox(height: 8),
                  const Text("Restoran", style: TextStyle(fontSize: 14)),
                ],
              ),
            ],
          ),

          const SizedBox(height: 20),

          // ===== GARIS PEMISAH =====
          Container(height: 1, color: Colors.grey.shade400),

          const SizedBox(height: 20),

          // ===== SALDO + COINS =====
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Row(
                children: [
                  Text("💸", style: TextStyle(fontSize: 28)),
                  SizedBox(width: 6),
                  Text(
                    "Rp. 500.000",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text("0 coins", style: TextStyle(fontSize: 20)),
            ],
          ),
        ],
      ),
    );
  }
}
