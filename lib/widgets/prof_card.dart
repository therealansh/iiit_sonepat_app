import 'package:flutter/material.dart';

class ProfCard extends StatelessWidget {
  ProfCard({this.name, this.image});
  final String name;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Container(
          width: 100,
          height: 500,
          child: Center(
            child: Column(
              children: <Widget>[
                Hero(
                  tag: name,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(
                          height: 150, width: 150, child: Image.asset(image))),
                ), //TODO
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    left: 8,
                    right: 8,
                    bottom: 0,
                  ),
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      // ignore: deprecated_member_use
                      color: Theme.of(context).textTheme.body1.color,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
