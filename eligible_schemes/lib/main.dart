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
        child: Page(),
      ),
    );
  }
}

class Page extends StatefulWidget {
  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  String categoryValue = 'OPEN';
  String incomeValue = 'Upto Rs 8,00,000';
  List<String> category = <String>[
    'OPEN',
    'Minority(Muslim, Sikh, Christian, Buddhist, Parsi, Jain & Jew)',
    'SC',
    'ST',
    'OBC',
    'VJNT',
    'SEBC',
    'EWS',
    'SBC',
    'Only Physically Handicapped',
    'AMS Students',
  ];
  List<String> income = <String>[
    'Upto Rs 8,00,000',
    'Upto Rs 2,50,000',
    'Above Rs 2,50,001',
    'Upto Rs 1,50,000',
    'Rs 1,50,001 to Rs 8,00,000',
    'No income limit',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eligible Schemes'),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 8.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Headings(title: 'Category'),
                      DropdownButton(
                          value: categoryValue,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          items: category.map((String category) {
                            return DropdownMenuItem(
                                child: Text(category), value: category);
                          }).toList(),
                          isExpanded: true,
                          onChanged: (String? newValue) {
                            setState(() {
                              categoryValue = newValue!;
                            });
                          }),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Headings(title: 'Income'),
                      DropdownButton(
                          value: incomeValue,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          items: income.map((String income) {
                            return DropdownMenuItem(
                                child: Text(
                                  income,
                                  style: TextStyle(
                                    color: Colors.black87,
                                  ),
                                ),
                                value: income);
                          }).toList(),
                          isExpanded: true,
                          onChanged: (String? newValue) {
                            setState(() {
                              incomeValue = newValue!;
                            });
                          }),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
              ),
              child: Headings(title: 'Eligible Schemes'),
            ),
            // Expanded(
            //   //Displaying Eligible Schemes here
            //   child: Container(
            //     color: Colors.grey,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class Headings extends StatelessWidget {
  Headings({required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
