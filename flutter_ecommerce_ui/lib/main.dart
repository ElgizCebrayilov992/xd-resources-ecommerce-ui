import 'package:flutter/material.dart';
import 'package:flutterecommerceui/core/size_config.dart';
import 'package:flutterecommerceui/view/cashier_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              title: 'Ecommerce Ui',
              home: CashierView(),
            );
          },
        );
      },
    );
  }
}
