import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFCEE7EF),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 1st section
            Container(
              padding: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
              height: 100.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Tasdid Masuk",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0,
                    ),
                  ),
                  Icon(Icons.settings, size: 40),
                ],
              ),
            ),

            const SizedBox(height: 30.0),

            // second item
            Container(
              
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.all(15.0),
              height: 250.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "account balance",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    "TK 2500.00",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 38.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Divider(thickness: 2.0, color: Colors.black),
                  const SizedBox(height: 20),

                  // 🔹 Fixed Row section
                  Row(


                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // আয়


                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("চলতি মাসে আয়", style: TextStyle(fontWeight: FontWeight.w500)),
                          Text(
                            "+ TK 1200.00",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),


                      // 🔸 সহজ মাঝের Divider
                      Container(
                        height: 50,
                        width: 2,
                        color: Colors.grey.shade400,
                      ),


                      // ব্যয়
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("চলতি মাসে ব্যয়", style: TextStyle(fontWeight: FontWeight.w500)),
                          Text(
                            "- TK 900.00",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
