import 'package:flutter/cupertino.dart';

class HomeMenuModel {
  int _id;
  String _name;
  IconData _icon;

  HomeMenuModel(this._id, this._name, this._icon);

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  IconData get icon => _icon;

  set icon(IconData value) {
    _icon = value;
  }
}
