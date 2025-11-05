import 'package:flutter/material.dart';

class List1 extends StatefulWidget {
  const List1({super.key});

  @override
  State<List1> createState() => _List1State();
}

class _List1State extends State<List1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListTile(
        leading: Icon(Icons.arrow_upward, color: Colors.green),
        title: Text('Freelance Payment'),
        subtitle: Text('5 Nov 2025'),
        trailing: Text('+ TK 800', style: TextStyle(color: Colors.green)),
      )
      ,
    );
  }
}
