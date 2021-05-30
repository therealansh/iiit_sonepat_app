import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class AttendancePage extends StatelessWidget {
  static const int maths_att = 7, maths_total = 10;
  static const int dsa_att = 8, dsa_total = 10;
  static const int comm_att = 5, comm_total = 10;
  static const int ap_att = 4, ap_total = 10;
  static const int wd_att = 8, wd_total = 10;
  static const int de_att = 7, de_total = 10;
  static int total = maths_total+dsa_total+comm_total+ap_total+wd_total+de_total;
  static int attend = maths_att+wd_att+ap_att+comm_att+dsa_att+de_att;
  final String attendanceTextSafe = 'Good Job You Are Safe.......!';
  final String attendanceTextDanger = 'Oops You need to attend more classes.......!';
  final slider = CircularPercentIndicator(
    animation: true,
    radius: 180,
    lineWidth: 25.0,
    percent: attend/total,
    backgroundColor: Colors.pinkAccent,
    progressColor: Color(0xFF42f5c5),
    center: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${(attend/total)*100}%',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 36),
          ),
          Text(
            'Present',
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.w200),
          ),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0XFF081631),
        backwardsCompatibility: true,
        centerTitle: true,
        title: Text('Attendance'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Friday',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w300),
              ),
              RichText(
                text: TextSpan(
                  text: '16',
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 0.5,
                    fontSize: 44,
                    fontWeight: FontWeight.bold,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'th',
                      style: TextStyle(
                        textBaseline: TextBaseline.alphabetic,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' April 2021',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        wordSpacing: 1,
                        letterSpacing: 1.5,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                thickness: 1.5,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Overall Attendance',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    letterSpacing: 2.5,
                    wordSpacing: 1.5,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      // color: Colors.black,
                      blurRadius: 2.0,
                      spreadRadius: 0.5,
                      // offset: Offset(2.5, 2.5),
                    )
                  ],
                  color: Color.fromRGBO(214, 230, 253, 1),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        slider,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Color(0xFF42f5c5),
                                  radius: 14,
                                ),
                                Text(
                                  'Attended',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      letterSpacing: 1.5),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.pinkAccent,
                                  radius: 14,
                                ),
                                Text(
                                  'Skipped',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      letterSpacing: 1.5),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      (attend/total >= 0.75) ? attendanceTextSafe : attendanceTextDanger,
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          wordSpacing: 1.5,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(214,230,253,1), width: 2.5),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '$total',
                          style: TextStyle(
                              letterSpacing: 1.5,
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          'Total',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                    VerticalDivider(
                      color: Colors.black,
                      indent: 8,
                      endIndent: 8,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '$attend',
                          style: TextStyle(
                              letterSpacing: 1.5,
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          'Attended',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                    VerticalDivider(
                      color: Colors.black,
                      indent: 8,
                      endIndent: 8,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${total-attend}',
                          style: TextStyle(
                              letterSpacing: 1.5,
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          'Skipped',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                color: Colors.black,
                thickness: 1.5,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Subjects',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    letterSpacing: 2.5,
                    wordSpacing: 1.5,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 15.0),
              SubjectAttendanceWidget(
                color: Colors.pink,
                subject: 'Maths',
                attended: maths_att,
                totalclass: maths_total,
              ),
              SizedBox(
                height: 15.0,
              ),
              SubjectAttendanceWidget(
                  totalclass: comm_total,
                  attended: comm_att,
                  subject: 'Communications',
                  color: Colors.green),
              SizedBox(
                height: 15.0,
              ),
              SubjectAttendanceWidget(
                  totalclass: wd_total,
                  attended: wd_att,
                  subject: 'Web Design',
                  color: Colors.blue),
              SizedBox(
                height: 15.0,
              ),
              SubjectAttendanceWidget(
                  totalclass: dsa_total,
                  attended: dsa_att,
                  subject: 'Data Structures',
                  color: Colors.yellow),
              SizedBox(
                height: 15.0,
              ),
              SubjectAttendanceWidget(
                  totalclass: de_total,
                  attended: de_att,
                  subject: 'Digital Electronics',
                  color: Colors.cyan),
              SizedBox(
                height: 15.0,
              ),
              SubjectAttendanceWidget(
                  totalclass: ap_total,
                  attended: ap_att,
                  subject: 'App Design',
                  color: Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}

class SubjectAttendanceWidget extends StatelessWidget {
  SubjectAttendanceWidget(
      {@required this.totalclass,
        @required this.attended,
        @required this.subject,
        @required this.color});
  final String subject;
  // ignore: non_constant_identifier_names
  final int totalclass;
  final int attended;
  final Color color;
  @override
  Widget build(BuildContext context) {
    double percent = attended / totalclass;
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.elliptical(25, 20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                subject,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          ),
          LinearPercentIndicator(
            lineHeight: 10,
            animation: true,
            trailing: Text(
              '${percent * 100}%',
              style: TextStyle(
                  color: color, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            percent: percent,
            backgroundColor: Color(0xFF081631),
            progressColor: color,
          ),
          Text(
            'You have attended $attended out of $totalclass classes',
            style:
            TextStyle(color: Colors.black, fontSize: 16, wordSpacing: 1.5),
          )
        ],
      ),
    );
  }
}
