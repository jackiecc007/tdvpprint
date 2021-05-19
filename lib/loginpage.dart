import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoading = false;
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // back ออกจากแอป ขึ้น AlertDialog
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
                child: Text(
                  'ใช่',
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
                  'ไม่ใช่',
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
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/singthong.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            padding: EdgeInsets.all(16),
            child: Card(
              margin:
                  EdgeInsets.only(top: 100, left: 30, right: 30, bottom: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              elevation: 4,
              color: Colors.black54,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  _headerTDVP(),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      'เข้าสู่ระบบ',
                      style: TextStyle(
                        fontFamily: 'THSarabunNew',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _boxEmail(),
                  _boxPassword(),
                  _buttonlogin(),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      _buttonregister(),
                      SizedBox(
                        width: 10,
                      ),
                      _buttongeneral(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(
                Icons.keyboard_arrow_left,
                color: const Color(0xffffda7a),
              ),
            ),
            Text(
              'Back',
              style: TextStyle(
                fontFamily: 'TH Sarabun New',
                fontSize: 18,
                color: const Color(0xffffda7a),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _headerTDVP() {
    return Container(
      padding: EdgeInsets.only(
        left: 0,
        top: 30,
      ),
      child: Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/logo.png'),
            ),
            SizedBox(
              width: 10,
            ),
            Center(
              child: Text(
                'โรงพิมพ์อาสารักษาดินแดน กรมการปกครอง\n'
                'Territorial Defence Volunteers Printing',
                style: TextStyle(
                  fontFamily: 'THSarabunNew',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xffffda7a),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _boxEmail() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        controller: emailController,
        decoration: InputDecoration(
          icon: Icon(Icons.mail_outline_outlined, color: Colors.black),
          labelText: "Email/Phone ",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        // The validator receives the text that the user has entered.
        validator: (value) {
          if (value.isEmpty) {
            return 'กรุณากรอก Email ด้วยค่ะ';
          } else if (!value.contains('@')) {
            return 'กรุณากรอก Email ให้ถูกต้องด้วยค่ะ!';
          }
          return null;
        },
      ),
    );
  }

  Widget _boxPassword() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        obscureText: true,
        controller: passwordController,
        decoration: InputDecoration(
          icon: Icon(Icons.lock_outline_rounded, color: Colors.black),
          labelText: "Password",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        // The validator receives the text that the user has entered.
        validator: (value) {
          if (value.isEmpty) {
            return 'กรุณากรอก Password ด้วยค่ะ';
          } else if (value.length < 6) {
            return 'กรุณากำหนด Password ไม่น้อยกว่า 6 ตัวอักษร ด้วยค่ะ!';
          }
          return null;
        },
      ),
    );
  }

  Widget _buttonlogin() {
    return RaisedButton(
      padding: const EdgeInsets.all(10),
      textColor: Colors.white,
      color: Colors.green,
      onPressed: () {},
      child: Text(
        'Login',
        style: TextStyle(
          fontFamily: 'TH Sarabun New',
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: const Color(0xFFFFFFFF),
        ),
      ),
    );
  }

  Widget _buttonregister() {
    return RaisedButton(
      padding: const EdgeInsets.all(10),
      textColor: Colors.white,
      color: Colors.green,
      onPressed: () {},
      child: Text(
        'สมัครสมาชิก',
        style: TextStyle(
          fontFamily: 'TH Sarabun New',
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: const Color(0xFFFFFFFF),
        ),
      ),
    );
  }

  Widget _buttongeneral() {
    return RaisedButton(
      padding: const EdgeInsets.all(10),
      textColor: Colors.white,
      color: Colors.green,
      onPressed: () {},
      child: Text(
        'บุคคลทั่วไป',
        style: TextStyle(
          fontFamily: 'TH Sarabun New',
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: const Color(0xFFFFFFFF),
        ),
      ),
    );
  }
}
