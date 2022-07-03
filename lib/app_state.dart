import 'package:shared_preferences/shared_preferences.dart';
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
    _favoris =
        prefs.getStringList('ff_favoris')?.map((x) => x == 'true')?.toList() ??
            _favoris;
  }

  SharedPreferences prefs;

  List<bool> _favoris = [];
  List<bool> get favoris => _favoris;
  set favoris(List<bool> _value) {
    _favoris = _value;
    prefs.setStringList('ff_favoris', _value.map((x) => x.toString()).toList());
  }

  void addToFavoris(bool _value) {
    _favoris.add(_value);
    prefs.setStringList(
        'ff_favoris', _favoris.map((x) => x.toString()).toList());
  }

  void removeFromFavoris(bool _value) {
    _favoris.remove(_value);
    prefs.setStringList(
        'ff_favoris', _favoris.map((x) => x.toString()).toList());
  }
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
