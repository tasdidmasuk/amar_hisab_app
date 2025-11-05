import 'package:amar_hisab/Pages/eliment/list1.dart';

import 'package:amar_hisab/Pages/home_page/home.dart';
import 'package:amar_hisab/Pages/login_page/login.dart';
import 'package:amar_hisab/Pages/login_page/signup.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Home(),
    );
  }
}
