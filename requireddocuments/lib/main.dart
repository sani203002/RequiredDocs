import 'package:flutter/material.dart';

void main() {
  runApp(
    HomePage(),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Required Documents'),
          ),
          body: Container(
            padding: EdgeInsets.only(left: 8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Texttitle(title: '1) Cap allotment letter'),
                  Texttitle(title: '2) College fee receipt'),
                  Texttitle(title: '3) Marksheet of SSC(10th std)'),
                  Texttitle(title: '4) Marksheet of HSC(12th std)'),
                  Texttitle(title: '5) Previous Year Marksheet'),
                  Texttitle(title: '6) All semester Marksheets'),
                  Texttitle(title: '7) Caste Certificate'),
                  Texttitle(
                      title:
                          '8) Income Certificate of current financial year(from Tehsildar)'),
                  Texttitle(title: '9) Bank Passbook'),
                  Texttitle(title: '10) Self Declaration'),
                  Texttitle(title: '11) Domicile Certificate'),
                  Texttitle(title: '12) Rashan Card'),
                  Texttitle(title: '13) Hostel Certificate(if Required)'),
                  Texttitle(title: '14) Gap Certificate(if Required)'),
                  Texttitle(title: '15) Handicap Certificate(if Required)'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Texttitle extends StatelessWidget {
  Texttitle({required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
    );
  }
}
