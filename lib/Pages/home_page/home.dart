import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
            Container(
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.all(15.0),
              height: 230.0,
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
                  const SizedBox(height: 5.0),
                  const Text(
                    "TK 2500.00",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 38.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const Divider(thickness: 2.0, color: Colors.black),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
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
                      Container(
                        height: 50,
                        width: 2,
                        color: Colors.grey,
                      ),
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
            const SizedBox(height: 20.0),
            Container(
              margin: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.09, // screen height এর 9%
                    width: MediaQuery.of(context).size.width * 0.40,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/add.png",
                          height: 30.0,
                          width: 30.0,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 8.0),
                        const Text(
                          "আমার আয়",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: MediaQuery.of(context).size.width * 0.40,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/add.png",
                          height: 30.0,
                          width: 30.0,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 8.0),
                        const Text(
                          "আমার ব্যয়",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ],
                    ),),


                ],
              ),
            ),



          ],
        ),
      ),


      //bototom navbar

      // bottomNavigationBar: BottomNavigationBar(
      //
      //     currentIndex: 0,
      //
      //     selectedItemColor: Colors.green,
      //     unselectedItemColor: Colors.black,
      //
      //
      //     unselectedLabelStyle: const TextStyle(
      //       color: Colors.black, // এই রঙও unselectedItemColor দ্বারা ওভাররাইড হবে
      //       fontWeight: FontWeight.w500,
      //       fontSize: 13,
      //     ),
      //
      //
      //     items: [
      //       BottomNavigationBarItem(icon: Icon(Icons.home),
      //       label: "Home"),
      //
      //       BottomNavigationBarItem(icon: Icon(Icons.note_alt_outlined),
      //           label: "hisab"),
      //
      //       BottomNavigationBarItem(icon: Icon(Icons.area_chart,color: Colors.black,),
      //           label: "chart",
      //
      //       ),
      //       BottomNavigationBarItem(icon: Icon(Icons.person),
      //           label: "profile")
      //
      //
      //
      //     ]),


      ////ata crud //////


      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        items: <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),


    );
  }
}
