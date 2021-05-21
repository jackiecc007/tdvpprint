import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:tdvpprint/pages/customer/customer_service.dart';
import 'package:tdvpprint/pages/general/loginpage.dart';


class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isLoading = false;
  final _formKey = GlobalKey<FormState>();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  DatabaseReference dbRef = FirebaseDatabase.instance.reference().child("Users");
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController subdistrictController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController provinceController = TextEditingController();
  TextEditingController zipcodeController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child : Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/bg400.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                    children: <Widget>[
                      SizedBox(height: 30),
                      _backButton(),
                      SizedBox(height: 20),
                      Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image(image:
                            AssetImage('assets/images/logo.png'),
                            ),
                            SizedBox(width: 10,),
                            Center(
                              child: Text(
                                'โรงพิมพ์อาสารักษาดินแดน กรมการปกครอง\n''Territorial Defence Volunteers Printing',
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
                      SizedBox(height: 30),
                      Container(
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
                              'สมัครสมาชิก',
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
                      ),
                      //SizedBox(height: 20),

                      Padding(
                          padding: EdgeInsets.all(15.0),
                          child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            controller: fnameController,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.location_history_rounded ,
                                color: Colors.white,
                              ),
                              labelText:"ชื่อ : ",
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white,)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.pinkAccent[400])),
                            ),
                            // validator null
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'กรุณากรอก "ชื่อ" ด้วยค่ะ';
                              }
                              return null;
                            },
                          ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: lnameController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.location_history_rounded ,
                              color: Colors.white,
                            ),
                            labelText:"นามสกุล : ",
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white,)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.pinkAccent[400])),
                          ),
                          // validator null
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'กรุณากรอก "นามสกุล" ด้วยค่ะ';
                            }
                            return null;
                          },
                        ),
                      ),


                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: addressController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.home,
                              color: Colors.white,
                            ),
                            labelText:"ที่อยู่ :",
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white,)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.pinkAccent[400])),
                          ),
                          // validator null
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'กรุณากรอก "ที่อยู่" ด้วยค่ะ';
                            }
                            return null;
                          },
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: subdistrictController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.home,
                              color: Colors.white,
                            ),
                            labelText:"ตำบล : ",
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white,)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.pinkAccent[400])),
                          ),
                          // validator null
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'กรุณากรอก "แขวง/ตำบล" ด้วยค่ะ';
                            }
                            return null;
                          },
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: districtController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.home,
                              color: Colors.white,
                            ),
                            labelText:"อำเภอ : ",
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white,)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.pinkAccent[400])),
                          ),
                          // validator null
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'กรุณากรอก "เขต/อำเภอ" ด้วยค่ะ';
                            }
                            return null;
                          },
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: provinceController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.location_city_sharp,
                              color: Colors.white,
                            ),
                            labelText:"จังหวัด : ",
                            //hintText:"จังหวัด : ",
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white,)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.pinkAccent[400])),
                          ),
                          // validator null
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'กรุณากรอก "จังหวัด" ด้วยค่ะ';
                            }
                            return null;
                          },
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: zipcodeController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.location_on_sharp,
                              color: Colors.white,
                            ),
                            labelText:"รหัสไปรษณีย์ : ",
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white,)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.pinkAccent[400])),
                          ),
                          // validator null
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'กรุณากรอก "รหัสไปรษณีย์" ด้วยค่ะ';
                            }
                            return null;
                          },
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: phoneController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.phone_android_outlined,
                              color: Colors.white,
                            ),
                            labelText:"เบอร์โทรศัพท์ : ",
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white,)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.pinkAccent[400])),
                          ),
                          // validator null
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'กรุณากรอก "เบอร์โทรศัพท์" ด้วยค่ะ';
                            }
                            return null;
                          },
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: emailController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Colors.white,
                            ),
                            labelText:"Email :",
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white,)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.pinkAccent[400])),
                          ),
                          // validator null
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'กรุณากรอก "Email" ด้วยค่ะ';
                            } else if (!value.contains('@')) {
                              return 'กรุณากรอกให้ถูกต้องด้วยค่ะ';
                            }
                            return null;
                          },
                        ),
                      ),

                      Padding(
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
                            labelText:"รหัสผ่าน : ",
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white,)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.pinkAccent[400])),
                          ),
                          // validator null
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'กรุณากรอก "Password" ด้วยค่ะ';
                            } else if (value.length < 6) {
                              return 'กรุณากรอก Password มากกว่า 6 ตัว ด้วยค่ะ';
                            }
                            return null;
                          },
                        ),
                      ),


                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: isLoading
                            ? CircularProgressIndicator()
                            : RaisedButton(
                          color: Colors.green,
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              setState(() {
                                isLoading = true;
                              });
                              registerToFb();
                            }
                          },
                          child: Text(
                            'ลงทะเบียน',
                            style: TextStyle(
                              fontFamily: 'THSarabunNew',
                              fontSize: 26,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),

                    ],),
              ),
            ),),);
  }

  void registerToFb() {
    firebaseAuth
        .createUserWithEmailAndPassword(
        email: emailController.text, password: passwordController.text)
        .then((result) {
      dbRef.child(result.user.uid).set({
        "fname": fnameController.text,
        "lname": lnameController.text,
        "address": addressController.text,
        "subdistrict": subdistrictController.text,
        "district": districtController.text,
        "province": provinceController.text,
        "zipcode": zipcodeController.text,
        "phone": phoneController.text,
        "email": emailController.text,
      }).then((res) {
        isLoading = false;
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CustomerServicePage(uid: result.user.uid)),
        );
      });
    }).catchError((err) {
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

  @override
  void dispose() {
    super.dispose();
    fnameController.dispose();
    lnameController.dispose();
    addressController.dispose();
    subdistrictController.dispose();
    districtController.dispose();
    provinceController.dispose();
    zipcodeController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
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
              child: Icon(Icons.keyboard_arrow_left, color: const Color(0xffffda7a),),
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

}
