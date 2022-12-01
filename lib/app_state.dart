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
    _userid = prefs.getString('ff_userid') ?? _userid;
    _deviceid = prefs.getString('ff_deviceid') ?? _deviceid;
  }

  late SharedPreferences prefs;

  String _userid = '';
  String get userid => _userid;
  set userid(String _value) {
    _userid = _value;
    prefs.setString('ff_userid', _value);
  }

  String _deviceid = '';
  String get deviceid => _deviceid;
  set deviceid(String _value) {
    _deviceid = _value;
    prefs.setString('ff_deviceid', _value);
  }

  String deviceUniqueId = 'X00001';
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
