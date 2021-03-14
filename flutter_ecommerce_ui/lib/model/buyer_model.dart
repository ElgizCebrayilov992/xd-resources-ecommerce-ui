class BuyerModel {
  int _id;
  String _name;
  String _surname;

  BuyerModel(this._id, this._name, this._surname);

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String get name => _name;

  String get surname => _surname;

  set surname(String value) {
    _surname = value;
  }

  set name(String value) {
    _name = value;
  }
}
