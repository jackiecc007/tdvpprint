import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart' as lct;

class MapsPage extends StatefulWidget {
  @override
  _MapsPageState createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  static const LatLng centerMap = const LatLng(13.960564, 100.799599);

  Widget Map() {
    return GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: CameraPosition(
        target: centerMap,
        zoom: 15,
      ),
      onMapCreated: (GoogleMapController googleMapController) {},
      markers: TDVPMarker(),
    );
  }

  Set<Marker> TDVPMarker() {
    return <Marker>[
      Marker(
        position: centerMap,
        markerId: MarkerId('TDVPrint'),
        infoWindow: InfoWindow(
          title: "โรงพิมพ์อาสารักษาดินแดนกรมการปกครอง",
          snippet: "55/1 หมู่ 11 ต.บึงทองหลาง อ.ลำลูกกา จ.ปทุมธานี 12150",
        ),
      ),
    ].toSet();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Maps',
          style: TextStyle(
            fontFamily: 'THSarabunNew',
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: const Color(0xffffffff),
          ),
        ),
        backgroundColor: const Color(0xff002040),
      ),
      //body: Map(),

      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              child: Map(),
            ),
            _tdvpbox(),
          ],
        ),
      ),
    );
  }

  Widget _tdvpbox() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Card(
        //color: const Color(0xffb7c0d4),
        //color: const Color(0xfffefbfb),
        //color: const Color(0xff0095da),
        color: const Color(0xff002040),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 5,
        margin: EdgeInsets.all(20),
        child: Container(
          height: 125,
          width: 350,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Container(
                child: Image.asset(
                  'assets/images/b11.jpg',
                  fit: BoxFit.cover,
                  height: 80,
                ),
              ),
              Expanded(
                  child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "โรงพิมพ์อาสารักษาดินแดน กรมการปกครอง",
                    style: TextStyle(
                      fontFamily: 'THSarabunNew',
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xfffefbfb),
                    ),
                  ),
                  Text(
                    "55/1 หมู่11 ต.บึงทองหลาง อ.ลำลูกกา จ.ปทุมธานี 12150",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'THSarabunNew',
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xfffefbfb),
                    ),
                  ),
                  Text(
                    "เวลาทำการ วันจันทร์-วันศุกร์ " "เวลา 08.00น.-17.00น.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'THSarabunNew',
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xfffefbfb),
                    ),
                  ),
                  Text(
                    "โทร. 0-2012-4170 ถึง 80",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'THSarabunNew',
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xfffefbfb),
                    ),
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
