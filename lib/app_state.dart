import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  late SharedPreferences prefs;

  DocumentReference? wapitiCar =
      FirebaseFirestore.instance.doc('/Users/bDXdLyS4xvSXIo69laJHS3KPA512');

  String ppUsera =
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/wapiti-car-1rdvln/assets/pryl9ryccuoi/PP_for_users.png';
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
