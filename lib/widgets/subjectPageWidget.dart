import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:native_pdf_view/native_pdf_view.dart';

class SubjectPage extends StatelessWidget {
  SubjectPage({this.initialPage, this.subjectName, this.imagePath, this.quote});

  final int initialPage;
  final String subjectName;
  final String imagePath;
  final String quote;

  @override
  Widget build(BuildContext context) {
    final pdfController = PdfController(
      initialPage: initialPage,
      document: PdfDocument.openAsset('assets/iiit_sonepat_syllabus.pdf'),
    );
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //=========NavBar=========//
                    Container(
                      // height: height*0.1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              size: 32,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          Text(
                            subjectName,
                            style: TextStyle(
                              fontSize: 35.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        height: height * 0.47,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(imagePath),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 160.0,
                child: Center(
                  child: Text(
                    "\"${quote}\"",
                    style: TextStyle(fontSize: 28.0, fontFamily: 'Pacifico'),
                  ),
                ),
              ),
              Text(
                'Syllabus',
                style: TextStyle(fontSize: 28.0, fontFamily: 'Ubuntu'),
              ),
              Container(
                height: height * 0.9,
                child: PdfView(
                  controller: pdfController,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

