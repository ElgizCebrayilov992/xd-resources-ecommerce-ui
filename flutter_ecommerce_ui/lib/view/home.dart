import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterecommerceui/core/home_menu_list.dart';
import 'package:flutterecommerceui/core/size_config.dart';
import 'package:flutterecommerceui/model/home_menu_model.dart';
import 'package:flutterecommerceui/view/cashier_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<HomeMenuModel> list = HomeMenuList().getHomeMenuModelList();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    //final screenWidthD = double.infinity;

    GlobalKey key = GlobalKey();
    //final screenSefaHeight = key.currentContext.size.width;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: GridView.count(
          crossAxisCount: 2,
          children: list.map((e) {
            //  print("scrWD: $screenWidthD");
            return InkWell(
              onTap: () => _selectedMenu(e, context),
              child: Container(
                width: SizeConfig.widthMultiplier,
                height: SizeConfig.heightMultiplier,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: Material(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  elevation: 6,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 1 * SizeConfig.heightMultiplier,
                                horizontal: 1 * SizeConfig.heightMultiplier),
                            child: FaIcon(
                              e.icon,
                              color: Colors.black38,
                              size: SizeConfig.imageSizeMultiplier * 34,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 1 * SizeConfig.heightMultiplier),
                          child: FittedBox(
                            child: Text(
                              e.name,
                              style: Theme.of(context).textTheme.button,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  _selectedMenu(HomeMenuModel e, BuildContext context) {
    switch (e.id) {
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CashierView(),
        ));
        //code write..
        return;
      case 2:
        print("Salam: ${e.id}");
        //code write..
        return;
    }
  }
}
