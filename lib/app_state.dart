import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _name = prefs.getStringList('ff_name') ?? _name;
    });
    _safeInit(() {
      _imagesMenu = prefs.getStringList('ff_imagesMenu') ?? _imagesMenu;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _name = ['All', 'Americano', 'Cappucino'];
  List<String> get name => _name;
  set name(List<String> _value) {
    _name = _value;
    prefs.setStringList('ff_name', _value);
  }

  void addToName(String _value) {
    _name.add(_value);
    prefs.setStringList('ff_name', _name);
  }

  void removeFromName(String _value) {
    _name.remove(_value);
    prefs.setStringList('ff_name', _name);
  }

  void removeAtIndexFromName(int _index) {
    _name.removeAt(_index);
    prefs.setStringList('ff_name', _name);
  }

  void updateNameAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _name[_index] = updateFn(_name[_index]);
    prefs.setStringList('ff_name', _name);
  }

  List<String> _imagesMenu = [
    'https://picsum.photos/seed/269/600',
    'https://picsum.photos/seed/374/600',
    'https://picsum.photos/seed/301/600'
  ];
  List<String> get imagesMenu => _imagesMenu;
  set imagesMenu(List<String> _value) {
    _imagesMenu = _value;
    prefs.setStringList('ff_imagesMenu', _value);
  }

  void addToImagesMenu(String _value) {
    _imagesMenu.add(_value);
    prefs.setStringList('ff_imagesMenu', _imagesMenu);
  }

  void removeFromImagesMenu(String _value) {
    _imagesMenu.remove(_value);
    prefs.setStringList('ff_imagesMenu', _imagesMenu);
  }

  void removeAtIndexFromImagesMenu(int _index) {
    _imagesMenu.removeAt(_index);
    prefs.setStringList('ff_imagesMenu', _imagesMenu);
  }

  void updateImagesMenuAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _imagesMenu[_index] = updateFn(_imagesMenu[_index]);
    prefs.setStringList('ff_imagesMenu', _imagesMenu);
  }
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

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
