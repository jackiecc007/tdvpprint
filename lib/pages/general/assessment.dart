import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sweetalert/sweetalert.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';

class Assessment extends StatefulWidget {
  @override
  _AssessmentState createState() => _AssessmentState();
}

//SizePaper
class SizePaper {
  int id;
  String name;
  num pricestart;

  SizePaper(this.id, this.name, this.pricestart);

  static List<SizePaper> getSizePaper() {
    return <SizePaper>[
      SizePaper(1, 'A4 ขนาด 21x29.7cm', 0.75),
      SizePaper(2, 'A5 ขนาด 14.8x21cm', 0.50),
      SizePaper(3, 'B5 ขนาด 18.2x25.7cm', 0.75),
    ];
  }
}

//TypePaper
class TypePaper {
  int id;
  String name;

  TypePaper(this.id, this.name);

  static List<TypePaper> getTypePaper() {
    return <TypePaper>[
      TypePaper(1, 'กระดาษปอนด์'),
      TypePaper(2, 'กระดาษอาร์ต'),
      TypePaper(3, 'กระดาษถนอมสายตา'),
    ];
  }
}

//FormatPrint
class FormatPrint {
  int id;
  String name;

  FormatPrint(this.id, this.name);

  static List<FormatPrint> getFormatPrint() {
    return <FormatPrint>[
      FormatPrint(1, 'ขาว-ดำ(หน้า-หลัง)'),
      FormatPrint(2, 'ขาว-ดำ(หน้าเดียว)'),
      FormatPrint(3, '4สี'),
    ];
  }
}

//ValuePage
class ValuePage {
  int id;
  String name;
  num numberpages;

  ValuePage(this.id, this.name, this.numberpages);

  static List<ValuePage> getValuePage() {
    return <ValuePage>[
      ValuePage(1, '8', 8),
      ValuePage(2, '12', 12),
      ValuePage(3, '16', 16),
      ValuePage(4, '20', 20),
      ValuePage(5, '24', 24),
      ValuePage(6, '28', 28),
      ValuePage(7, '32', 32),
      ValuePage(8, '36', 36),
      ValuePage(9, '40', 40),
      ValuePage(10, '60', 60),
      ValuePage(11, '80', 80),
    ];
  }
}

//Bookbinding
class Bookbinding {
  int id;
  String name;
  num pricebinding;

  Bookbinding(this.id, this.name, this.pricebinding);

  static List<Bookbinding> getBookbinding() {
    return <Bookbinding>[
      Bookbinding(1, 'ไสสันทากาว', 15),
      Bookbinding(2, 'เย็บกลาง/เย็บมุงหลังคา', 3),
      Bookbinding(3, 'สันห่วง/ขดลวด', 25),
    ];
  }
}

//VolumeBook
class VolumeBook {
  int id;
  String name;
  num numbervolumes;

  VolumeBook(this.id, this.name, this.numbervolumes);

  static List<VolumeBook> getVolumeBook() {
    return <VolumeBook>[
      VolumeBook(1, '100', 100),
      VolumeBook(2, '200', 200),
      VolumeBook(3, '300', 300),
      VolumeBook(4, '400', 400),
      VolumeBook(5, '500', 500),
      VolumeBook(6, '600', 600),
      VolumeBook(7, '700', 700),
      VolumeBook(8, '800', 800),
      VolumeBook(9, '900', 900),
      VolumeBook(10, '1,000', 1000),
    ];
  }
}

class _AssessmentState extends State<Assessment> {
  //SizePaper
  List<SizePaper> _sizepaper = SizePaper.getSizePaper();
  List<DropdownMenuItem<SizePaper>> _dropdownMenuItems01;
  SizePaper _selectedSizePaper;

  //TypePaper
  List<TypePaper> _typepaper = TypePaper.getTypePaper();
  List<DropdownMenuItem<TypePaper>> _dropdownMenuItems02;
  TypePaper _selectedTypePaper;

  //FormatPrint
  List<FormatPrint> _formatprint = FormatPrint.getFormatPrint();
  List<DropdownMenuItem<FormatPrint>> _dropdownMenuItems03;
  FormatPrint _selectedFormatPrint;

  //ValuePage
  List<ValuePage> _valuepage = ValuePage.getValuePage();
  List<DropdownMenuItem<ValuePage>> _dropdownMenuItems04;
  ValuePage _selectedValuePage;

  //Bookbinding
  List<Bookbinding> _bookbinding = Bookbinding.getBookbinding();
  List<DropdownMenuItem<Bookbinding>> _dropdownMenuItems05;
  Bookbinding _selectedBookbinding;

  //VolumeBook
  List<VolumeBook> _volumebook = VolumeBook.getVolumeBook();
  List<DropdownMenuItem<VolumeBook>> _dropdownMenuItems06;
  VolumeBook _selectedVolumeBook;

  @override
  void initState() {
    _dropdownMenuItems01 = buildDropdownMenuItems01(_sizepaper);
    _selectedSizePaper = _dropdownMenuItems01[0].value;
    _dropdownMenuItems02 = buildDropdownMenuItems02(_typepaper);
    _selectedTypePaper = _dropdownMenuItems02[0].value;
    _dropdownMenuItems03 = buildDropdownMenuItems03(_formatprint);
    _selectedFormatPrint = _dropdownMenuItems03[0].value;
    _dropdownMenuItems04 = buildDropdownMenuItems04(_valuepage);
    _selectedValuePage = _dropdownMenuItems04[0].value;
    _dropdownMenuItems05 = buildDropdownMenuItems05(_bookbinding);
    _selectedBookbinding = _dropdownMenuItems05[0].value;
    _dropdownMenuItems06 = buildDropdownMenuItems06(_volumebook);
    _selectedVolumeBook = _dropdownMenuItems06[0].value;

    super.initState();
  }

  //SizePaper
  List<DropdownMenuItem<SizePaper>> buildDropdownMenuItems01(List sizepaper) {
    List<DropdownMenuItem<SizePaper>> items = List();
    for (SizePaper sizepaper in sizepaper) {
      items.add(
        DropdownMenuItem(
          value: sizepaper,
          child: Text(sizepaper.name),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem01(SizePaper selectedSizePaper) {
    setState(() {
      _selectedSizePaper = selectedSizePaper;
    });
  }

  //TypePaper
  List<DropdownMenuItem<TypePaper>> buildDropdownMenuItems02(List typepaper) {
    List<DropdownMenuItem<TypePaper>> items = List();
    for (TypePaper typepaper in typepaper) {
      items.add(
        DropdownMenuItem(
          value: typepaper,
          child: Text(typepaper.name),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem02(TypePaper selectedTypePaper) {
    setState(() {
      _selectedTypePaper = selectedTypePaper;
    });
  }

  //FormatPrint
  List<DropdownMenuItem<FormatPrint>> buildDropdownMenuItems03(
      List formatprint) {
    List<DropdownMenuItem<FormatPrint>> items = List();
    for (FormatPrint formatprint in formatprint) {
      items.add(
        DropdownMenuItem(
          value: formatprint,
          child: Text(formatprint.name),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem03(FormatPrint selectedFormatPrint) {
    setState(() {
      _selectedFormatPrint = selectedFormatPrint;
    });
  }

  //ValuePage
  List<DropdownMenuItem<ValuePage>> buildDropdownMenuItems04(List valuepage) {
    List<DropdownMenuItem<ValuePage>> items = List();
    for (ValuePage valuepage in valuepage) {
      items.add(
        DropdownMenuItem(
          value: valuepage,
          child: Text(valuepage.name),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem04(ValuePage selectedValuePage) {
    setState(() {
      _selectedValuePage = selectedValuePage;
    });
  }

  //Bookbinding
  List<DropdownMenuItem<Bookbinding>> buildDropdownMenuItems05(
      List bookbinding) {
    List<DropdownMenuItem<Bookbinding>> items = List();
    for (Bookbinding bookbinding in bookbinding) {
      items.add(
        DropdownMenuItem(
          value: bookbinding,
          child: Text(bookbinding.name),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem05(Bookbinding selectedBookbinding) {
    setState(() {
      _selectedBookbinding = selectedBookbinding;
    });
  }

  //VolumeBook
  List<DropdownMenuItem<VolumeBook>> buildDropdownMenuItems06(List volumebook) {
    List<DropdownMenuItem<VolumeBook>> items = List();
    for (VolumeBook volumebook in volumebook) {
      items.add(
        DropdownMenuItem(
          value: volumebook,
          child: Text(volumebook.name),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem06(VolumeBook selectedVolumeBook) {
    setState(() {
      _selectedVolumeBook = selectedVolumeBook;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/p13.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 20,
              bottom: 20,
              left: 20,
              right: 20,
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  _backButton(),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xfffffdf9),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        _headertext(),
                        SizedBox(
                          height: 10.0,
                        ),
                        _SizePaper(),
                        SizedBox(
                          height: 10,
                        ),
                        _TypePaper(),
                        SizedBox(
                          height: 10,
                        ),
                        _FormatPrint(),
                        SizedBox(
                          height: 10,
                        ),
                        _ValuePage(),
                        SizedBox(
                          height: 10,
                        ),
                        _Bookbinding(),
                        SizedBox(
                          height: 10,
                        ),
                        _VolumeBook(),
                        SizedBox(
                          height: 10,
                        ),
                        _buttoncal(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buttoncal() {
    return RaisedButton(
      padding: const EdgeInsets.all(10),
      textColor: Colors.white,
      color: Colors.green,
      onPressed: () {
        SweetAlert.show(context,
            title: "ราคาประเมิน",
            subtitle:
                //" ราคา : ${FlutterMoneyFormatter(amount: ((_selectedSizePaper.pricestart * _selectedValuePage.numberpages) + _selectedBookbinding.pricebinding) * _selectedVolumeBook.numbervolumes).fastCalc(type: FastCalcType.addition, amount: 1.111).fastCalc(type: FastCalcType.substraction, amount: 2.222).output.nonSymbol} บาท",
                //" \n ราคา : ${FlutterMoneyFormatter(amount: ((_selectedSizePaper.pricestart * _selectedValuePage.numberpages) + _selectedBookbinding.pricebinding) * _selectedVolumeBook.numbervolumes).fastCalc(type: FastCalcType.addition, amount: 1.111).fastCalc(type: FastCalcType.substraction, amount: 2.222).output.nonSymbol} บาท \n ราคารวมVAT(7%) : ${FlutterMoneyFormatter(amount: (((_selectedSizePaper.pricestart * _selectedValuePage.numberpages) + _selectedBookbinding.pricebinding) * _selectedVolumeBook.numbervolumes) + (((_selectedSizePaper.pricestart * _selectedVolumeBook.numbervolumes) + _selectedBookbinding.pricebinding) * _selectedVolumeBook.numbervolumes) * 7 / 100).fastCalc(type: FastCalcType.addition, amount: 1.111).fastCalc(type: FastCalcType.substraction, amount: 2.222).output.nonSymbol} บาท",
                //" \n ขนาดกระดาษ :  ${_selectedSizePaper.name} \n รูปแบบกระดาษ :  ${_selectedTypePaper.name} \n รูปแบบการพิมพ์ :  ${_selectedFormatPrint.name} \n จำนวนหน้าทั้งหมด :  ${_selectedValuePage.name} หน้า \n วิธีการเข้าเล่ม :  ${_selectedBookbinding.name} \n จำนวนเล่มที่ต้องการ :  ${_selectedVolumeBook.name} เล่ม \n ราคา : ${FlutterMoneyFormatter(amount: ((_selectedSizePaper.pricestart * _selectedValuePage.numberpages) + _selectedBookbinding.pricebinding) * _selectedVolumeBook.numbervolumes).fastCalc(type: FastCalcType.addition, amount: 1.111).fastCalc(type: FastCalcType.substraction, amount: 2.222).output.nonSymbol} บาท \n ราคารวมVAT(7%) : ${FlutterMoneyFormatter(amount: (((_selectedSizePaper.pricestart * _selectedValuePage.numberpages) + _selectedBookbinding.pricebinding) * _selectedVolumeBook.numbervolumes) + ((((_selectedSizePaper.pricestart * _selectedVolumeBook.numbervolumes) + _selectedBookbinding.pricebinding) * _selectedVolumeBook.numbervolumes) * 7 ) / 100).fastCalc(type: FastCalcType.addition, amount: 1.111).fastCalc(type: FastCalcType.substraction, amount: 2.222).output.nonSymbol} บาท",
                " ขนาดกระดาษ :  ${_selectedSizePaper.name} \n รูปแบบกระดาษ :  ${_selectedTypePaper.name} \n รูปแบบการพิมพ์ :  ${_selectedFormatPrint.name} \n จำนวนหน้าทั้งหมด :  ${_selectedValuePage.name} หน้า \n วิธีการเข้าเล่ม :  ${_selectedBookbinding.name} \n จำนวนเล่มที่ต้องการ :  ${_selectedVolumeBook.name} เล่ม \n ราคา : ${FlutterMoneyFormatter(amount: ((_selectedSizePaper.pricestart * _selectedValuePage.numberpages) + _selectedBookbinding.pricebinding) * _selectedVolumeBook.numbervolumes).fastCalc(type: FastCalcType.addition, amount: 1.111).fastCalc(type: FastCalcType.substraction, amount: 2.222).output.nonSymbol} บาท",
            style: SweetAlertStyle.success);
      },
      child: Text(
        'คำนวณ',
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }

  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Container(
              //padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(
                Icons.keyboard_arrow_left,
                color: const Color(0xffffffff),
              ),
            ),
            Text(
              'Back',
              style: TextStyle(
                fontFamily: 'THSarabunNew',
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _headertext() {
    return Container(
      child: Column(
        children: [
          Center(
            child: Text(
              'การประเมินราคาสิ่งพิมพ์',
              style: TextStyle(
                fontFamily: 'THSarabunNew',
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: const Color(0xff004080),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              '**ราคาอาจมีการเปลี่ยนแปลง**',
              style: TextStyle(
                fontFamily: 'THSarabunNew',
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: const Color(0xfff57777),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _SizePaper() {
    return Container(
      child: Row(
        children: <Widget>[
          Text(
            'ขนาดกระดาษ',
            style: TextStyle(
              fontFamily: 'THSarabunNew',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: const Color(0xff004080),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          DropdownButton(
            value: _selectedSizePaper,
            items: _dropdownMenuItems01,
            onChanged: onChangeDropdownItem01,
          ),
        ],
      ),
    );
  }

  Widget _TypePaper() {
    return Container(
      child: Row(
        children: <Widget>[
          Text(
            'รูปแบบกระดาษ',
            style: TextStyle(
              fontFamily: 'THSarabunNew',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: const Color(0xff004080),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          DropdownButton(
            value: _selectedTypePaper,
            items: _dropdownMenuItems02,
            onChanged: onChangeDropdownItem02,
          ),
        ],
      ),
    );
  }

  Widget _FormatPrint() {
    return Container(
      child: Row(
        children: <Widget>[
          Text(
            'รูปแบบการพิมพ์',
            style: TextStyle(
              fontFamily: 'THSarabunNew',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: const Color(0xff004080),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          DropdownButton(
            value: _selectedFormatPrint,
            items: _dropdownMenuItems03,
            onChanged: onChangeDropdownItem03,
          ),
        ],
      ),
    );
  }

  Widget _ValuePage() {
    return Container(
      child: Row(
        children: <Widget>[
          Text(
            'จำนวนหน้าทั้งหมด',
            style: TextStyle(
              fontFamily: 'THSarabunNew',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: const Color(0xff004080),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          DropdownButton(
            value: _selectedValuePage,
            items: _dropdownMenuItems04,
            onChanged: onChangeDropdownItem04,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'หน้า',
            style: TextStyle(
              fontFamily: 'THSarabunNew',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: const Color(0xff004080),
            ),
          ),
        ],
      ),
    );
  }

  Widget _Bookbinding() {
    return Container(
      child: Row(
        children: <Widget>[
          Text(
            'วิธีการเข้าเล่ม',
            style: TextStyle(
              fontFamily: 'THSarabunNew',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: const Color(0xff004080),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          DropdownButton(
            value: _selectedBookbinding,
            items: _dropdownMenuItems05,
            onChanged: onChangeDropdownItem05,
          ),
        ],
      ),
    );
  }

  Widget _VolumeBook() {
    return Container(
      child: Row(
        children: <Widget>[
          Text(
            'จำนวนเล่มที่ต้องการ',
            style: TextStyle(
              fontFamily: 'THSarabunNew',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: const Color(0xff004080),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          DropdownButton(
            value: _selectedVolumeBook,
            items: _dropdownMenuItems06,
            onChanged: onChangeDropdownItem06,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'เล่ม',
            style: TextStyle(
              fontFamily: 'THSarabunNew',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: const Color(0xff004080),
            ),
          ),
        ],
      ),
    );
  }
}
