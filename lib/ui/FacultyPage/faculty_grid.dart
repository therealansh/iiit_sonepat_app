import 'package:flutter/material.dart';
import 'package:iiit_sonepat_stable/widgets/prof_card.dart';
import 'package:iiit_sonepat_stable/models/all_prof_info.dart';

AppBar myAppBar(BuildContext ctx) {
  return AppBar(
    elevation: 10,
    backgroundColor: Color.fromRGBO(79, 84, 89, 1),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Faculty',
          style: TextStyle(
            // ignore: deprecated_member_use
            color: Theme.of(ctx).textTheme.body1.color,
          ),
        ),
        IconButton(
          icon: Icon(Icons.search),
          highlightColor: Color.fromRGBO(247, 200, 42, 1),
          splashColor: Color.fromRGBO(247, 200, 42, 1),
          onPressed: () {},
        ),
      ],
    ),
  );
}

class FacultyGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context),
      body: Container(
        color: Theme.of(context).primaryColor,
        child: GridView.count(
          crossAxisCount: 2,
//          padding: EdgeInsets.all(3.0),
          mainAxisSpacing: 8.0,
          childAspectRatio: 1 / 1.1,
          children: <Widget>[
            Builder(
              builder: (BuildContext context) {
                return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => mohammadD()));
                    },
                    child: ProfCard(
                      name: 'Dr. Mohammad Najmud Doja',
                      image: 'assets/images/doja.jpg',
                    ));
              },
            ),
            Builder(
              builder: (BuildContext context) {
                return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => diddiK()));
                    },
                    child: ProfCard(
                      name: 'Dr. Diddy Kumara Swamy',
                      image: 'assets/images/diddi.jpg',
                    ));
              },
            ),
            Builder(
              builder: (BuildContext context) {
                return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => rajivV()));
                    },
                    child: ProfCard(
                      name: 'Dr. Rajiv Verma',
                      image: 'assets/images/rajiv.jpg',
                    ));
              },
            ),
            Builder(
              builder: (BuildContext context) {
                return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => mukeshM()));
                    },
                    child: ProfCard(
                      name: 'Dr. Mukesh Mann',
                      image: 'assets/images/mann.jpg',
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
