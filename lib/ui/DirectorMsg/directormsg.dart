import 'package:flutter/material.dart';
import 'package:iiit_sonepat_stable/constants/StringConstt.dart';

class DirectorMsg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String dirName = "Dr. M.N. Doja";
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: ListView(
          children: <Widget>[
            Image.network(
              'http://iiitsonepat.ac.in/storage/Photo-Director.jpg',
              width: 180,
              height: 180,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Wrap(
                children: <Widget>[
                  Text(
                    DIRECTOR_MSG,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16,
                      // ignore: deprecated_member_use
                      color: Theme.of(context).textTheme.body1.color,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              dirName,
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
                // ignore: deprecated_member_use
                color: Theme.of(context).textTheme.body1.color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
