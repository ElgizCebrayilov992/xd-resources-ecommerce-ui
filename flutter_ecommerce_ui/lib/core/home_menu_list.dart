import 'package:flutterecommerceui/model/home_menu_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeMenuList {
  List<HomeMenuModel> getHomeMenuModelList() {
    return [
      HomeMenuModel(1, "Kassa", FontAwesomeIcons.shoppingBasket),
      HomeMenuModel(2, "Depo", FontAwesomeIcons.truck),
      HomeMenuModel(4, "Maqazin", FontAwesomeIcons.store),
      HomeMenuModel(5, "Isci", FontAwesomeIcons.users),
      HomeMenuModel(3, "Depo", FontAwesomeIcons.fileInvoice),
      HomeMenuModel(6, "Ayar", FontAwesomeIcons.cogs),
      HomeMenuModel(7, "Haqqında", FontAwesomeIcons.info),
    ];
  }
}
