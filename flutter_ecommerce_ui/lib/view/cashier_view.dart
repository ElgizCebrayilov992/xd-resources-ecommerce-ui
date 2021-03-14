import 'package:flutter/material.dart';
import 'package:flutter_qr_bar_scanner/qr_bar_scanner_camera.dart';
import 'package:flutterecommerceui/core/buyer_list.dart';
import 'package:flutterecommerceui/core/sale.dart';
import 'package:flutterecommerceui/core/size_config.dart';
import 'package:flutterecommerceui/model/buyer_model.dart';
import 'package:flutterecommerceui/model/sale_model.dart';

class CashierView extends StatefulWidget {
  @override
  _CashierViewState createState() => _CashierViewState();
}

class _CashierViewState extends State<CashierView> {
  List<String> list = [];
  String _qrInfo = 'Scan a QR/Bar code';
  List<SaleModel> getSaleModel;
  bool selectItem = false;
  List<BuyerModel> getBuyerModelList = [];

  _qrCallback(String code) {
    setState(() {
      if (!list.contains(code)) {
        list.add(code);
      }

      _qrInfo = code;
    });
  }

  BuyerModel dropdownValue;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getSaleModel = Sale().getSale();
    getBuyerModelList = BuyerList().getBuyerModelList();
    dropdownValue = getBuyerModelList[0];
  }

  @override
  Widget build(BuildContext context) {
    int i = 0;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text("Satış"),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              saleAndBarcode(),
              liste(i),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("Alıcı"),
                  SizedBox(
                    width: 5,
                  ),
                  DropdownButton<BuyerModel>(
                    value: dropdownValue,
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.deepPurple),

                    items: getBuyerModelList.map((e) {
                      return DropdownMenuItem<BuyerModel>(
                        value: e,
                        child: Text(e.name),
                      );
                    }).toList(),

                    onChanged: (newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },

                    // items: <String>['One', 'Two', 'Free', 'Four']
                    //     .map<DropdownMenuItem<String>>((String value) {
                    //   return DropdownMenuItem<String>(
                    //     value: value,
                    //     child: Text(value),
                    //   );
                    // }).toList(),
                  )
                ],
              ),
            ],
          ),
        ));
  }

  Container liste(int i) {
    return Container(
      height: SizeConfig.heightMultiplier * 50,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            //headingRowHeight: 10,
            dividerThickness: 1,
            showBottomBorder: true,
            onSelectAll: (value) {
              selectItem = true;
            },
            columns: [
              DataColumn(
                label: Text("No"),
              ),
              DataColumn(
                label: Text("Ad"),
              ),
              DataColumn(
                label: Text("quantity"),
              ),
              DataColumn(
                label: Text("gauge"),
              ),
              DataColumn(
                label: Text("price"),
              ),
              DataColumn(
                label: Text("currency"),
              ),
              DataColumn(
                label: Text("əməliyyat"),
              ),
            ],
            rows: getSaleModel.map(
              (sale) {
                i++;

                return DataRow(
                  selected: selectItem,
                  cells: [
                    DataCell(Text(i.toString())),
                    DataCell(Text(sale.name)),
                    DataCell(Text(sale.quantity.toString())),
                    DataCell(Text(sale.gauge)),
                    DataCell(Text(sale.price.toString())),
                    DataCell(Text(sale.currency)),
                    DataCell(
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.edit,
                              color: Colors.teal,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                  ],
                );
              },
            ).toList(),
          ),
        ),
      ),
    );
  }

  Row saleAndBarcode() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        barcodeMethod(),
        SaleWgidet(),
      ],
    );
  }

  Container barcodeMethod() {
    return Container(
      height: SizeConfig.heightMultiplier * 20,
      width: SizeConfig.widthMultiplier * 50,
      color: Colors.amberAccent,
      margin: const EdgeInsets.only(bottom: 10),
      child: QRBarScannerCamera(
        onError: (context, error) => Text(
          error.toString(),
          style: TextStyle(color: Colors.red),
        ),
        qrCodeCallback: (code) {
          _qrCallback(code);
        },
      ),
    );
  }
}

class SaleWgidet extends StatelessWidget {
  const SaleWgidet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: SizeConfig.heightMultiplier * 9.5,
          width: SizeConfig.widthMultiplier * 50,
          decoration: BoxDecoration(
              color: Colors.black12.withOpacity(0.5),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ümumi qiymət",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Row(
                  children: [
                    Text(
                      "450",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      "AZN",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 1,
        ),
        Container(
          height: SizeConfig.heightMultiplier * 9.5,
          width: SizeConfig.widthMultiplier * 50,
          decoration: BoxDecoration(
              color: Colors.black12.withOpacity(0.5),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Satılan məhsul sayı",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  "45",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
