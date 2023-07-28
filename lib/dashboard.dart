import 'package:flutter/material.dart';

class DashBoardPage extends StatefulWidget {
  var UserName;

  DashBoardPage(String UserName) {
    this.UserName = UserName;
  }

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(widget.UserName),
        actions: const [
          Icon(
            Icons.notifications,
            color: Color(0xff6E6E6E),
            size: 30,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            SizedBox(height: 30),
            Align(
                alignment: Alignment.topLeft,
                child: Text('Namaste, Aditya Raj Gupta',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ))),
            SizedBox(height: 8),
            Text(
              'Welcome to Nepal Police App. Your Comprehensive tool for modern policing.',
              style: TextStyle(color: Color(0xff6E6E6E)),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DashboardItem('assets/Covid 20.png', 'Report COVID 19'),
                DashboardItem('assets/siren.png', 'Report Incident'),
                DashboardItem('assets/phone-book.png', 'Emergency Num.'),
              ],
            ),
            SizedBox(height: 50),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              DashboardItem('assets/news.png', 'News'),
              DashboardItem('assets/notice.png', 'Notice'),
              DashboardItem('assets/Radio.png', 'FM'),
            ]),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DashboardItem('assets/stations.png', 'Stations Nearby'),
                DashboardItem('assets/complaint.png', 'e-Complaint'),
                DashboardItem('assets/report.png', 'Clearance Report'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardItem extends StatelessWidget {
  var imageLink;
  var itemText;
  DashboardItem(this.imageLink, this.itemText);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            Image.asset(imageLink),
            SizedBox(height: 20),
            Text(itemText),
          ],
        ),
      ),
    );
  }
}