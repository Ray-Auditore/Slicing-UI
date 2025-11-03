import 'package:flutter/material.dart';
import 'package:slicing_ui1/komponen/bannerinfo.dart';
import 'package:slicing_ui1/komponen/komponen_ui_1.dart';
import 'package:slicing_ui1/komponen/menuapp.dart';
import 'package:slicing_ui1/komponen/saldoapp.dart';

class Page01 extends StatelessWidget {
  const Page01({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.pinkAccent, Colors.white],
                  ),
                ),
                child: Column(
                  children: [
                  
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 15,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: const Color.fromARGB(
                                255,
                                230,
                                229,
                                229,
                              ),
                              hintText: 'Mau makan apa hari ini?',
                              hintStyle: const TextStyle(color: Colors.grey),
                              prefixIcon: const Icon(Icons.search),
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        const CircleAvatar(
                          radius: 22,
                          backgroundImage: AssetImage(
                            'assets/profile_placeholder.png',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),

                
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Menu favorit anda",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 15),
                        SizedBox(
                          height: 100,
                          width: 120,
                          child: Image.asset('assets/fast food.png'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),

                  
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          KomponenUi1(logo: 'assets/burger.png', text: 'Promo'),
                          SizedBox(width: 15),
                          KomponenUi1(
                            logo: 'assets/store.png',
                            text: 'Restoran',
                          ),
                          SizedBox(width: 15),
                          KomponenUi1(
                            logo: 'assets/orange-juice.png',
                            text: 'Minuman',
                          ),
                          SizedBox(width: 15),
                          KomponenUi1(
                            logo: 'assets/vegetables.png',
                            text: 'Buah & Sayur',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Saldoapp1(),
              ),

             
              const SizedBox(height: 25),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Menuapp1(),
                      Menuapp1(),
                      Menuapp1(),
                      Menuapp1(),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Menuapp1(),
                      Menuapp1(),
                      Menuapp1(),
                      Menuapp1(),
                    ],
                  ),
                ],
              ),

           
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Promo hari ini',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 15),

             
              SizedBox(
                height: 170,
                width: double.infinity,
                child: PageView(
                  controller: PageController(viewportFraction: 0.9),
                  children: const [
                    Bannerinfo1(banner: 'assets/banner1.png'),
                    Bannerinfo1(banner: 'assets/banner2.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: SizedBox(height: 30, child: Image.asset("assets/home.png")),
            ),
            IconButton(
              onPressed: () {},
              icon: SizedBox(
                height: 30,
                child: Image.asset("assets/promo.png"),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SizedBox(height: 30, child: Image.asset("assets/chat.png")),
            ),
            IconButton(
              onPressed: () {},
              icon: SizedBox(
                height: 30,
                child: Image.asset("assets/shopping-bag.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
