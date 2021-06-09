import 'package:flutter/material.dart';

class LatestNewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(79, 84, 89, 1),
        ),
        body: Container(
          child: Center(
            child: Text(
              'NEWS',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
