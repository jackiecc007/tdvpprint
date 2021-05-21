import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

import 'package:tdvpprint/pages/general/regpage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tdvpprint/pages/customer/customer_service.dart';

//import 'registerpage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoading = false;
  final _formKey = GlobalKey<FormState>();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Stack(
          children: <Widget>[
            Container(
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/p21.jpg"),
                      //image: AssetImage("assets/images/bg0001.png"),
                      //image: AssetImage("assets/images/pro001.jpg"),
                      //image: AssetImage("assets/images/b15.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: height,
                  padding: EdgeInsets.all(20),
                  child: Container(
                    child: Card(
                      margin: EdgeInsets.only(
                          top: 75, left: 10, right: 10, bottom: 70),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      elevation: 5,
                      color: Colors.black54,
                      //color: Colors.grey[900],
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 30),
                          //_logo(),
                          _headerTDVP(),
                          SizedBox(height: 20),
                          //_headerlogin(),
                          _headerpath(),
                          //SizedBox(height: 10),
                          _blockEmail(),
                          _blockPassword(),
                          _blocklogin(),
                          SizedBox(
                            height: 10,
                          ),
                          _regpath(),
                          _mailButton(),
                          //_generalButton(),
                          //_adminButton(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _headerTDVP() {
    return Container(
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
    );
  }

  Widget _logo() {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/logo.png'),
                  height: 125,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _headerlogin() {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
                color: const Color(0xffffda7a),
              ),
            ),
          ),
          Text(
            'เข้าสู่ระบบ',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'THSarabunNew',
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffda7a),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
                color: const Color(0xffffda7a),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _blockEmail() {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        controller: emailController,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.email_outlined,
            color: Colors.white,
          ),
          labelText: "Email :",
          labelStyle: TextStyle(
            color: Colors.white,
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.white,
          )),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.pinkAccent[400])),
          hintText: "  ittdvp@tdvpprint.com",
          hintStyle: TextStyle(
            color: Colors.white,
          ),
        ),
        // validator null
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

  Widget _blockPassword() {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        obscureText: true,
        controller: passwordController,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.white,
          ),
          labelText: "รหัสผ่าน : ",
          labelStyle: TextStyle(
            color: Colors.white,
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.white,
          )),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.pinkAccent[400])),
          hintText: "  XXXXXX",
          hintStyle: TextStyle(
            color: Colors.white,
          ),
        ),
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

  Widget _blocklogin() {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: isLoading
          ? CircularProgressIndicator()
          : RaisedButton(
              //color: const Color(0xfffbb448),
              color: const Color(0xff0e254e),
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  setState(() {
                    isLoading = true;
                  });
                  logInToFirebase();
                }
              },
              child: Text(
                'Login',
                style: TextStyle(
                  fontFamily: 'THSarabunNew',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  //color: const Color(0xff0e254e),
                  color: const Color(0xffffffff),
                ),
              ),
            ),
    );
  }

  void logInToFirebase() {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: emailController.text, password: passwordController.text)
        .then((result) {
      isLoading = false;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => CustomerServicePage(uid: result.user.uid)),
      );
    }).catchError((err) {
      print(err.message);
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Error"),
              content: Text(err.message),
              actions: [
                FlatButton(
                  child: Text("Ok"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    });
  }

  Widget _headerpath() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 2,
                color: const Color(0xfff1f8ff),
              ),
            ),
          ),
          Text(
            'เข้าสู่ระบบ',
            style: TextStyle(
              fontFamily: 'THSarabunNew',
              fontSize: 28,
              //color: const Color(0xff0e254e),
              color: const Color(0xffffffff),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 2,
                color: const Color(0xfff1f8ff),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }


  Widget _regpath() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 2,
                color: const Color(0xfff1f8ff),
              ),
            ),
          ),
          Text(
            'หรือ',
            style: TextStyle(
              fontFamily: 'THSarabunNew',
              fontSize: 28,
              //color: const Color(0xff0e254e),
              color: const Color(0xffffffff),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 2,
                color: const Color(0xfff1f8ff),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }

  Widget _mailButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => RegisterPage()));
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 50,
        //margin: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffde3e26),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      topLeft: Radius.circular(5)),
                ),
                alignment: Alignment.center,
                child: new Icon(
                  Icons.mail,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffe37969),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(5),
                      topRight: Radius.circular(5)),
                ),
                alignment: Alignment.center,
                child: Text(
                  'สมัครสมาชิกด้วยบัญชี Email',
                  style: TextStyle(
                    fontFamily: 'THSarabunNew',
                    fontSize: 26,
                    color: const Color(0xfff1f8ff),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _generalButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => RegisterPage()));
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 50,
        //margin: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF00C721),
                  //color: Color(0xFF0A005F),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      topLeft: Radius.circular(5)),
                ),
                alignment: Alignment.center,
                child: new Icon(
                  Icons.person_sharp,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF52C766),
                  //color: Color(0xFF4F3BFF),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(5),
                      topRight: Radius.circular(5)),
                ),
                alignment: Alignment.center,
                child: Text(
                  'ผู้ใช้งานทั่วไป',
                  style: TextStyle(
                    fontFamily: 'THSarabunNew',
                    fontSize: 26,
                    color: const Color(0xfff1f8ff),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _adminButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => RegisterPage()));
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 50,
        //margin: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  //color: Color(0xFF00C721),
                  color: Color(0xFF0A005F),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      topLeft: Radius.circular(5)),
                ),
                alignment: Alignment.center,
                child: new Icon(
                  Icons.lock_rounded,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  //color: Color(0xFF8AFF9D),
                  color: Color(0xFF4F3BFF),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(5),
                      topRight: Radius.circular(5)),
                ),
                alignment: Alignment.center,
                child: Text(
                  'ผู้ดูแลระบบ',
                  style: TextStyle(
                    fontFamily: 'THSarabunNew',
                    fontSize: 26,
                    color: const Color(0xfff1f8ff),
                  ),
                ),
              ),
            ),
          ],
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
                color: const Color(0xffffc52e),
              ),
            ),
            Text(
              'Back',
              style: TextStyle(
                fontFamily: 'THSarabunNew',
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffc52e),
              ),
            )
          ],
        ),
      ),
    );
  }




}
