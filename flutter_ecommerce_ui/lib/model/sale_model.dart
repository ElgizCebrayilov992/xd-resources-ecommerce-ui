class SaleModel {
  String _name;
  double _quantity;
  String _gauge;
  double _price;
  String currency;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  double get quantity => _quantity;

  set quantity(double value) {
    _quantity = value;
  }

  String get gauge => _gauge;

  set gauge(String value) {
    _gauge = value;
  }

  double get price => _price;

  set price(double value) {
    _price = value;
  }

  SaleModel(
      this._name, this._quantity, this._gauge, this._price, this.currency);
}
