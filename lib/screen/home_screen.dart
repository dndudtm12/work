import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // latitude , longitude
  static final LatLng cmpLatLng = LatLng(
    37.5233273,
    126.921252,
  );

  static final CameraPosition cmeraPosition = CameraPosition(
    target: cmpLatLng,
    zoom: 15,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: rendeApprBar(),
      body: Column(
        children: [
          _CustomGoogleMap(
            cmeraPosition: cmeraPosition,
          ),
          _CumBtn(),
        ],
      ),
    );
  }

  AppBar rendeApprBar() {
    return AppBar(
      title: Text(
        'WORK',
        style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.w700,
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

class _CustomGoogleMap extends StatelessWidget {
  final CameraPosition cmeraPosition;

  const _CustomGoogleMap({required this.cmeraPosition, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: cmeraPosition,
      ),
    );
  }
}

class _CumBtn extends StatelessWidget {
  const _CumBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        '출근하기',
      ),
    );
  }
}
