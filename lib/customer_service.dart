import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:tdvpprint/regpage.dart';

import 'customeractivity.dart';
import 'customerdata.dart';
import 'customerorders.dart';
import 'customerprinting.dart';
import 'customertransport.dart';
import 'loginpage.dart';

/*
class CustomerServicePage extends StatefulWidget {
  CustomerServicePage({this.uid});
  final String uid;
  final String title = "CUSTOMER SERVICE CENTER";

  @override
  _CustomerServicePageState createState() => _CustomerServicePageState();
}

class _CustomerServicePageState extends State<CustomerServicePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
*/

//////////
///
///


class CustomerServicePage extends StatelessWidget {
  CustomerServicePage({this.uid});
  final String uid;
  final String title = "CUSTOMER SERVICE CENTER";

  @override
  Widget build(BuildContext context) {
    Widget imageSliderCarousel = Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('assets/images/oc101.png'),
        ],
      ),
    );
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              onPressed: () {
                FirebaseAuth auth = FirebaseAuth.instance;
                auth.signOut().then((res) {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                          (Route<dynamic> route) => false);
                });
              },
            )
          ],
        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg204.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              imageSliderCarousel, //Slide image
              SizedBox(height: 30,),
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
                          color: const Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                    Text(
                      "ยินดีต้อนรับเข้าสู่ระบบ",
                      style: TextStyle(
                        fontFamily: 'THSarabunNew',
                        fontSize: 20,
                        color: const Color(0xFFFFFFFF),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Divider(
                          thickness: 2,
                          color: const Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
        drawer: NavigateDrawer(uid: this.uid));
  }
}

class NavigateDrawer extends StatefulWidget {
  final String uid;
  NavigateDrawer({Key key, this.uid}) : super(key: key);
  @override
  _NavigateDrawerState createState() => _NavigateDrawerState();
}

class _NavigateDrawerState extends State<NavigateDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: FutureBuilder(
                future: FirebaseDatabase.instance
                    .reference()
                    .child("Users")
                    .child(widget.uid)
                    .once(),
                builder: (context, AsyncSnapshot<DataSnapshot> snapshot) {
                  if (snapshot.hasData) {
                    return Text(snapshot.data.value['email']);
                  } else {
                    return CircularProgressIndicator();
                  }
                }),
            accountName: FutureBuilder(
                future: FirebaseDatabase.instance
                    .reference()
                    .child("Users")
                    .child(widget.uid)
                    .once(),
                builder: (context, AsyncSnapshot<DataSnapshot> snapshot) {
                  if (snapshot.hasData) {
                    return Text(snapshot.data.value['flname']);
                  } else {
                    return CircularProgressIndicator();
                  }
                }),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: <Color> [
                Color(0xff002040),
                Color(0xff004080),
              ]
              ),
            ),
          ),
          ListTile(
            leading: new IconButton(
              icon: new Icon(Icons.home, color: Colors.black),
              onPressed: () => null,
            ),
            title: Text('Home'),
            onTap: () {
              print(widget.uid);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CustomerServicePage(uid: widget.uid)),
              );
            },
          ),
          ListTile(
            leading: new IconButton(
              icon: new Icon(Icons.assignment_ind, color: Colors.black),
              onPressed: () => null,
            ),
            title: Text('แก้ไขข้อมูลส่วนตัว'),
            onTap: () {
              print(widget.uid);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CustomerDataPage(uid: widget.uid)),
              );
            },
          ),
          ListTile(
            leading: new IconButton(
              icon: new Icon(Icons.shopping_cart_outlined, color: Colors.black),
              onPressed: () => null,
            ),
            title: Text('สั่งซื้อ/สั่งพิมพ์แบบพิมพ์'),
            onTap: () {
              print(widget.uid);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CustomerOrdersPage(uid: widget.uid)),
              );
            },
          ),
          ListTile(
            leading: new IconButton(
              icon: new Icon(Icons.description_outlined, color: Colors.black),
              onPressed: () => null,
            ),
            title: Text('ประวัติการสั่งซื้อ/สั่งพิมพ์'),
            onTap: () {
              print(widget.uid);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CustomerActivityPage(uid: widget.uid)),
              );
            },
          ),

          //Tracking (การติดตามงาน)
          ListTile(
            leading: new IconButton(
              icon: new Icon(Icons.invert_colors_on_outlined, color: Colors.black),
              onPressed: () => null,
            ),
            title: Text('ติดตามงานพิมพ์'),
            onTap: () {
              print(widget.uid);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CustomerPrintingPage(uid: widget.uid)),
              );
            },
          ),
          ListTile(
            leading: new IconButton(
              icon: new Icon(Icons.beenhere_outlined, color: Colors.black),
              onPressed: () => null,
            ),
            title: Text('ติดตามการจัดส่ง'),
            onTap: () {
              print(widget.uid);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CustomerTransportPage(uid: widget.uid)),
              );
            },
          ),
          new Divider(color: Colors.black,),
          ListTile(
            leading: new IconButton(
              icon: new Icon(
                Icons.exit_to_app,
                color: Colors.black,
              ),
              onPressed: () {
                FirebaseAuth auth = FirebaseAuth.instance;
                auth.signOut().then((res) {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                          (Route<dynamic> route) => false);
                });
              },
            ),
            title: Text('ออกจากระบบ'),
            onTap: () {
              print(widget.uid);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}