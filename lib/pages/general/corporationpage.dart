import 'package:flutter/material.dart';

class CorporateScreen extends StatefulWidget {
  @override
  State createState() => new CorporateScreenState();
//FPDetailScreen({Key key, @required this.period}) : super(key: key);
}

class CorporateScreenState extends State<CorporateScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //bottomNavigationBar: bottomNavBar,
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                pinned: true,
                elevation: 0,
                expandedHeight: 170,
                leading: BackButton(
                  color: Colors.white,
                ),
                flexibleSpace: FlexibleSpaceBar(
                  //title: Text('title'),
                  //centerTitle: true,
                  background: Image.asset(
                    //'assets/images/bg952.jpg',
                    //'assets/images/bg852.jpg',
                    //'assets/images/oc103.png',
                    //"assets/images/cbg.jpg",
                    //'assets/images/b13.jpg',
                    //'assets/images/singthong.jpg',
                    'assets/images/ca100.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    indicatorColor: const Color(0xff04066b),
                    labelColor: const Color(0xff04066b),
                    unselectedLabelColor: const Color(0xff011298),
                    labelStyle: TextStyle(
                      fontFamily: 'THSarabunNew',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    tabs: [
                      Tab(
                        text: '????????????????????????????????????',
                      ),
                      Tab(
                        text: '??????????????????????????????/?????????????????????',
                      ),
                      Tab(
                        text: '???????????????????????????????????????',
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
              //controller: _tabController,
              children: [
                //Executive
                Container(
                  constraints: BoxConstraints.expand(),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bg5.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 20),
                        Column(
                          children: <Widget>[
                            /*
                            Divider(
                              color: const Color(0xfff0e6ce),
                              height: 10,
                              thickness: 2,
                              indent: 40,
                              endIndent: 40,
                            ),
                            */
                            Text(
                              '?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????',
                              style: TextStyle(
                                fontFamily: 'THSarabunNew',
                                fontSize: 20,
                                color: const Color(0xffffffff),
                              ),
                            ),
                            /*
                            Divider(
                              color: const Color(0xfff0e6ce),
                              height: 10,
                              thickness: 2,
                              indent: 40,
                              endIndent: 40,
                            ),
                            */
                          ],
                        ),
                        SizedBox(height: 20),
                        Column(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/c10.jpg',
                                  height: 100,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      '???????????????????????? ??????????????????',
                                      style: TextStyle(
                                        fontFamily: 'THSarabunNew',
                                        fontSize: 20,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                    Text(
                                      '??????????????????????????????????????????????????????',
                                      style: TextStyle(
                                        fontFamily: 'THSarabunNew',
                                        fontSize: 20,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Column(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/c9.jpg',
                                  height: 100,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      '???????????????????????? ?????????????????????????????????????????????',
                                      style: TextStyle(
                                        fontFamily: 'THSarabunNew',
                                        fontSize: 20,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                    Text(
                                      '??????.?????????????????????????????????????????????????????????????????????',
                                      style: TextStyle(
                                        fontFamily: 'THSarabunNew',
                                        fontSize: 20,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'assets/images/c8-1.jpg',
                                      height: 100,
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text(
                                          '???.???.????????????????????? ???????????????????????????',
                                          style: TextStyle(
                                            fontFamily: 'THSarabunNew',
                                            fontSize: 20,
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                        Text(
                                          '??????.??????.(??????????????????????????????)',
                                          style: TextStyle(
                                            fontFamily: 'THSarabunNew',
                                            fontSize: 20,
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'assets/images/c8-2.jpg',
                                      height: 100,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          '???????????????????????? ??????????????????',
                                          style: TextStyle(
                                            fontFamily: 'THSarabunNew',
                                            fontSize: 20,
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                        Text(
                                          '??????.??????.(????????????????????????????????????)',
                                          style: TextStyle(
                                            fontFamily: 'THSarabunNew',
                                            fontSize: 20,
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'assets/images/logo2.jpg',
                                      height: 100,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          '???????????????????????? ?????????????????????',
                                          style: TextStyle(
                                            fontFamily: 'THSarabunNew',
                                            fontSize: 20,
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                        Text(
                                          '??????.??????.(??????????????????????????????)',
                                          style: TextStyle(
                                            fontFamily: 'THSarabunNew',
                                            fontSize: 20,
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'assets/images/c8-3.jpg',
                                      height: 100,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          '?????????????????????????????? ???????????????',
                                          style: TextStyle(
                                            fontFamily: 'THSarabunNew',
                                            fontSize: 20,
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                        Text(
                                          '??????.??????.(?????????????????????????????????????????????????????????)',
                                          style: TextStyle(
                                            fontFamily: 'THSarabunNew',
                                            fontSize: 20,
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Image.asset(
                                          'assets/images/c8-4.jpg',
                                          height: 100,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              '???????????????????????????????????? ??????????????????????????????',
                                              style: TextStyle(
                                                fontFamily: 'THSarabunNew',
                                                fontSize: 20,
                                                color: const Color(0xffffffff),
                                              ),
                                            ),
                                            Text(
                                              '????????????????????????????????????????????????????????????',
                                              style: TextStyle(
                                                fontFamily: 'THSarabunNew',
                                                fontSize: 20,
                                                color: const Color(0xffffffff),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),

                //Mission
                Container(
                  padding: const EdgeInsets.all(20),
                  constraints: BoxConstraints.expand(),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bg5.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  /*
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xff002040),
                        Color(0xff033674),
                        Color(0xff04499f),
                        Color(0xff033674),
                        Color(0xff002040),
                        //Color(0xff004080),
                      ],
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                    ),
                  ),
                  */
                  child: SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          Card(
                            color: const Color(0xfffffdfd),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 5,
                            margin: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(
                                    Icons.check_circle,
                                    //color: const Color(0xff2c6cdf),
                                    color: const Color(0xff369000),
                                  ),
                                  title: const Text(
                                    '?????????????????????????????? (Vision)',
                                    style: TextStyle(
                                      fontFamily: 'THSarabunNew',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 26,
                                      //color: Color(0xFF090943),
                                      color: const Color(0xff900036),
                                      //color: const Color(0xff002055),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(
                                    '"????????????????????? ????????????????????? ????????????????????? ??????????????????????????????????????????"',
                                    style: TextStyle(
                                      fontFamily: 'THSarabunNew',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      //color: const Color(0xff900036),
                                      //color: const Color(0xff9b194a),
                                      //color: Color(0xFF090943),
                                      //color: Color(0xFF0040aa),
                                      color: Color(0xFFdd0053),
                                    ),
                                  ),
                                ),
                                Image.asset(
                                  'assets/images/cc100.jpeg',
                                  //height: 100,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Card(
                            color: const Color(0xfffffdfd),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 5,
                            margin: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ListTile(
                                  leading: Icon(
                                    Icons.check_circle,
                                    //color: const Color(0xff2c6cdf),
                                    color: const Color(0xff369000),
                                  ),
                                  title: const Text(
                                    '????????????????????? (Mission)',
                                    style: TextStyle(
                                      fontFamily: 'THSarabunNew',
                                      fontWeight: FontWeight.bold,
                                      //fontSize: 26,
                                      //color: Color(0xFF090943),
                                      color: const Color(0xff900036),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "- ??????????????????????????????????????????????????????????????????",
                                        style: TextStyle(
                                          fontFamily: 'THSarabunNew',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          //color: const Color(0xff900036),
                                          //color: Color(0xFF090943),
                                          color: Color(0xFFdd0053),
                                        ),
                                      ),
                                      Text(
                                        '- ??????????????????????????????????????????????????????????????????????????????????????????',
                                        style: TextStyle(
                                          fontFamily: 'THSarabunNew',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          //color: const Color(0xff900036),
                                          //color: Color(0xFF090943),
                                          color: Color(0xFFdd0053),
                                        ),
                                      ),
                                      Text(
                                        '- ???????????????????????????????????????????????????',
                                        style: TextStyle(
                                          fontFamily: 'THSarabunNew',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          //color: const Color(0xff900036),
                                          //color: Color(0xFF090943),
                                          color: Color(0xFFdd0053),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Image.asset('assets/images/bg815.jpg'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                //History
                Container(
                  padding: const EdgeInsets.all(20),
                  constraints: BoxConstraints.expand(),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bg5.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Image.asset(
                              'assets/images/b14.jpg',
                              fit: BoxFit.cover,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 5,
                            margin: EdgeInsets.all(10),
                          ),
                          Column(
                            children: <Widget>[
                              Center(
                                child: Text(
                                  "??????????????????????????????????????????????????????????????????????????????????????????",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'THSarabunNew',
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    //color: const Color(0xff04066b),
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Text(
                                '   ???????????????.???.2500 ???????????????????????????????????????????????????????????????(U.S.O.M.) ???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? ????????????????????????????????????????????????????????????????????????????????????????????? ???????????????????????????????????????????????????????????? ??????????????????????????????????????????????????????????????? ??????????????????????????????????????????????????????????????? ??????????????????????????????????????? ????????????????????????????????????????????????????????????????????????????????????????????????????????? ???????????????????????? ?????????????????????????????? ',
                                style: TextStyle(
                                  fontFamily: 'THSarabunNew',
                                  fontSize: 20,
                                  //color: const Color(0xff04066b),
                                  color: const Color(0xffffffff),
                                ),
                              ),
                              Text(
                                '   ???????????????.???.2551 ????????????????????????????????????????????????????????? ???????????????????????????????????????????????????????????????????????? ??????????????????????????????????????? ??????????????????????????????????????? ??????????????????????????????????????????????????????????????? 28 ????????????????????????????????????????????? ???????????? "????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? ???????????????????????????????????? ??????????????????????????????????????????"',
                                style: TextStyle(
                                  fontFamily: 'THSarabunNew',
                                  fontSize: 20,
                                  //color: const Color(0xff04066b),
                                  color: const Color(0xffffffff),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      color: Colors.white,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
