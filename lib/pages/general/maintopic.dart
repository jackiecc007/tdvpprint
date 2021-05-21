import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'assessment.dart';
import 'chatscreen.dart';
import 'contactscreen.dart';
import 'newsscreen.dart';
import 'calendarscreen.dart';
import 'printtrack.dart';
import 'deliverytrack.dart';
import 'catalogscreen.dart';
import 'corporationpage.dart';
import 'loginpage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<bool> _onWillPop() {
    return showDialog(
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: const Color(0xfff0f7f9),
            title: Text(
              'Exit',
              style: TextStyle(
                fontFamily: 'THSarabunNew',
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: const Color(0xff04066b),
              ),
            ),
            content: Text(
              'คุณต้องการออกจากแอปพลิเคชัน?',
              style: TextStyle(
                fontFamily: 'THSarabunNew',
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color(0xff1d1e79),
              ),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () => exit(0),
                /*Navigator.of(context).pop(true)*/
                child: Text(
                  'Yes',
                  style: TextStyle(
                    fontFamily: 'THSarabunNew',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff04066b),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text(
                  'No',
                  style: TextStyle(
                    fontFamily: 'THSarabunNew',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff04066b),
                  ),
                ),
              ),
            ],
          ),
        ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    Widget imageSliderCarousel = Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('assets/images/a1.jpg'),
          AssetImage('assets/images/a2.jpg'),
          AssetImage('assets/images/a3.jpg'),
        ],
      ),
    );

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff81d4fa),
          title: Text(
            'โรงพิมพ์อาสารักษาดินแดน กรมการปกครอง\n'
            'Territorial Defence Volunteers Printing',
            style: TextStyle(
              fontFamily: 'THSarabunNew',
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: const Color(0xff04066b),
            ),
          ),
          actions: [
            // action button
            IconButton(
              icon: SvgPicture.asset(
                "assets/images/account_circle.svg",
                height: 35,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    //MaterialPageRoute(builder: (context) => LoginPage()));
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
          ],
          leading: IconButton(
            icon: Image.asset('assets/images/logo.png'),
            onPressed: () {},
          ),
        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg3.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              imageSliderCarousel, //Slide image
              SizedBox(
                height: 20,
              ),

              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Divider(
                          thickness: 2,
                          //color: const Color(0xff070ab5),
                          color: const Color(0xff04066b),
                        ),
                      ),
                    ),
                    Text(
                      "เมนู",
                      style: TextStyle(
                        fontFamily: 'THSarabunNew',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        //color: const Color(0xff070ab5),
                        color: const Color(0xff04066b),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Divider(
                          thickness: 2,
                          //color: const Color(0xff070ab5),
                          color: const Color(0xff04066b),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),

              Expanded(
                child: GridView.count(
                  padding: EdgeInsets.all(10.0),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  primary: false,
                  crossAxisCount: 3,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CorporateScreen()));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        elevation: 4,
                        color: const Color(0xffb3e5fc),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 2,
                            ),
                            Image.asset(
                              'assets/images/001.png',
                              height: 60,
                            ),
                            Text(
                              'ข้อมูลองค์กร',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'THSarabunNew',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff04066b),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CatalogPage()));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        elevation: 4,
                        color: const Color(0xffb3e5fc),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 2,
                            ),
                            Image.asset(
                              'assets/images/002.png',
                              height: 60,
                            ),
                            Text(
                              'แบบสิ่งพิมพ์',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'THSarabunNew',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff04066b),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Assessment()));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        elevation: 4,
                        color: const Color(0xffb3e5fc),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 2,
                            ),
                            Image.asset(
                              'assets/images/003.png',
                              height: 60,
                            ),
                            Text(
                              'ประเมินราคา',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'THSarabunNew',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff04066b),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CalendarPage()));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        elevation: 4,
                        color: const Color(0xffb3e5fc),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 2,
                            ),
                            Image.asset(
                              'assets/images/004.png',
                              height: 60,
                            ),
                            Text(
                              'ปฏิทิน',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'THSarabunNew',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff04066b),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => JobTrackPage()));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        elevation: 4,
                        color: const Color(0xffb3e5fc),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 2,
                            ),
                            Image.asset(
                              'assets/images/005.png',
                              height: 60,
                            ),
                            Text(
                              'สถานะการพิมพ์',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'THSarabunNew',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff04066b),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LogisticsPage()));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        elevation: 4,
                        color: const Color(0xffb3e5fc),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 2,
                            ),
                            Image.asset(
                              'assets/images/006.png',
                              height: 60,
                            ),
                            Text(
                              'การจัดส่ง',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'THSarabunNew',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff04066b),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ContactScreen()));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        elevation: 4,
                        color: const Color(0xffb3e5fc),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 2,
                            ),
                            Image.asset(
                              'assets/images/007.png',
                              height: 60,
                            ),
                            Text(
                              'ติดต่อ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'THSarabunNew',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff04066b),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewsScreen()));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        elevation: 4,
                        color: const Color(0xffb3e5fc),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 2,
                            ),
                            Image.asset(
                              'assets/images/008.png',
                              height: 60,
                            ),
                            Text(
                              'ข่าวสาร',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'THSarabunNew',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff04066b),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatPage()));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        elevation: 4,
                        color: const Color(0xffb3e5fc),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 2,
                            ),
                            Image.asset(
                              'assets/images/009.png',
                              height: 60,
                            ),
                            Text(
                              'แชทบอท',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'THSarabunNew',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff04066b),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
