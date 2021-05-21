import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';
import 'socialscreen.dart';
import 'mapspage.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff004080),
            /*
            actions: [
              IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],

             */
          ),
          drawer: new Drawer(
            child: new ListView(
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                      Color(0xff002040),
                      Color(0xff004080),
                    ]),
                  ),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Image.asset(
                            'assets/images/logo.png',
                            height: 75,
                          ),
                        ),
                        Text(
                          'โรงพิมพ์อาสารักษาดินแดน กรมการปกครอง\n'
                          'Territorial Defence Volunteers Printing',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'TH Sarabun New',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                new ListTile(
                  leading: Icon(Icons.home),
                  title: new Text('Home'),
                  onTap: () => Navigator.of(context).pop(),
                ),
                new ListTile(
                  leading: Icon(Icons.phone_in_talk),
                  title: new Text('Phone Number'),
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ContactScreen())),
                ),
                new ListTile(
                  leading: Icon(Icons.supervisor_account),
                  title: new Text('Social Network'),
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SocialPage())),
                ),
                new ListTile(
                  leading: Icon(Icons.person_pin),
                  title: new Text('Maps'),
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MapsPage())),
                ),
              ],
            ),
          ),
          body: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg105.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 20,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: ListView(
                    children: <Widget>[
                      Container(
                        child: new Text(
                          "ติดต่อ/สอบถาม",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'TH Sarabun New',
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xfff4f8fb),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        decoration: BoxDecoration(
                          color: const Color(0xfff4f8fb),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding: EdgeInsets.all(20),
                        child: Row(
                          children: <Widget>[
                            Material(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xfff4f8fb),
                                ),
                                child: IconButton(
                                  icon:
                                      Image.asset('assets/images/contact.png'),
                                  onPressed: () => launch("tel://020124170"),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'ศูนย์บริการลูกค้า (ส่วนกลาง)',
                                  style: TextStyle(
                                    fontFamily: 'TH Sarabun New',
                                    fontSize: 16,
                                    color: const Color(0xff004080),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  '0-2012-4170  ถึง  80',
                                  style: TextStyle(
                                    fontFamily: 'TH Sarabun New',
                                    fontSize: 18,
                                    color: const Color(0xff004080),
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: false,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        decoration: BoxDecoration(
                          color: const Color(0xfff4f8fb),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding: EdgeInsets.all(20),
                        child: Row(
                          children: <Widget>[
                            Material(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xfff4f8fb),
                                ),
                                child: IconButton(
                                  icon: Image.asset(
                                    'assets/images/contact.png',
                                  ),
                                  onPressed: () => launch("tel://0863253414"),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'งานจำหน่าย',
                                  style: TextStyle(
                                    fontFamily: 'TH Sarabun New',
                                    fontSize: 16,
                                    color: const Color(0xff004080),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "086-3253414",
                                  style: TextStyle(
                                    fontFamily: 'TH Sarabun New',
                                    fontSize: 18,
                                    color: const Color(0xff004080),
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: false,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        decoration: BoxDecoration(
                          color: const Color(0xfff4f8fb),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding: EdgeInsets.all(20),
                        child: Row(
                          children: <Widget>[
                            Material(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xfff4f8fb),
                                ),
                                child: IconButton(
                                  icon: Image.asset(
                                    'assets/images/contact.png',
                                  ),
                                  onPressed: () => launch("tel://0863253416"),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'งานรับงานและประเมินราคา',
                                  style: TextStyle(
                                    fontFamily: 'TH Sarabun New',
                                    fontSize: 16,
                                    color: const Color(0xff004080),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "086-3253416",
                                  style: TextStyle(
                                    fontFamily: 'TH Sarabun New',
                                    fontSize: 18,
                                    color: const Color(0xff004080),
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: false,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        decoration: BoxDecoration(
                          color: const Color(0xfff4f8fb),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding: EdgeInsets.all(20),
                        child: Row(
                          children: <Widget>[
                            Material(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xfff4f8fb),
                                ),
                                child: IconButton(
                                  icon: Image.asset(
                                    'assets/images/contact.png',
                                  ),
                                  onPressed: () => launch("tel://0863253413"),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'งานเร่งรัดและติดตามหนี้สิน',
                                  style: TextStyle(
                                    fontFamily: 'TH Sarabun New',
                                    fontSize: 16,
                                    color: const Color(0xff004080),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "086-3253413",
                                  style: TextStyle(
                                    fontFamily: 'TH Sarabun New',
                                    fontSize: 18,
                                    color: const Color(0xff004080),
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: false,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        decoration: BoxDecoration(
                          color: const Color(0xfff4f8fb),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding: EdgeInsets.all(20),
                        child: Row(
                          children: <Widget>[
                            Material(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xfff4f8fb),
                                ),
                                child: IconButton(
                                  icon: Image.asset(
                                    'assets/images/contact.png',
                                  ),
                                  onPressed: () => launch("tel://0863253417"),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'งานการเงิน',
                                  style: TextStyle(
                                    fontFamily: 'TH Sarabun New',
                                    fontSize: 16,
                                    color: const Color(0xff004080),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "086-3253417",
                                  style: TextStyle(
                                    fontFamily: 'TH Sarabun New',
                                    fontSize: 18,
                                    color: const Color(0xff004080),
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: false,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
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
