import 'package:flutter/material.dart';
import 'package:iiit_sonepat_stable/widgets/prof_card.dart';
import 'package:iiit_sonepat_stable/models/all_prof_info.dart';

class FacultyGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF13191B),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.1,
          children: <Widget>[
            Builder(
              builder: (BuildContext context){
                return InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => mohammadD())
                    );
                  },
                  child: ProfCard(
                    name: 'Dr. Mohammad Najmud Doja',
                    image: 'assets/images/doja.jpg',
                  )
                );
              },
            ),
            Builder(
              builder: (BuildContext context){
                return InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => diddiK())
                    );
                  },
                  child: ProfCard(
                    name: 'Dr. Diddy Kumara Swamy',
                    image: 'assets/images/diddi.jpg',
                  )
                );
              },
            ),
            Builder(
              builder: (BuildContext context){
                return InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => rajivV())
                    );
                  },
                  child: ProfCard(
                    name: 'Dr. Rajiv Verma',
                    image: 'assets/images/rajiv.jpg',
                  )
                );
              },
            ),
            Builder(
              builder: (BuildContext context){
                return InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => mukeshM())
                    );
                  },
                  child: ProfCard(
                    name: 'Dr. Mukesh Mann',
                    image: 'assets/images/mann.jpg',
                  )
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}