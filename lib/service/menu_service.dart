import 'package:umei_restapi/model/menu/menu_model.dart';
import 'package:umei_restapi/mysql1/mysql_manager.dart';

class MenuService {
  static Future<MenuModel> getMenu() async {
    var results = await MySqlManager.query("SELECT id,title,type,href,updateTime FROM menu");
    Menu menu;
    List<Menu> list = new List();
    for (var row in results) {
      print("Id==${row[0]},title==${row[1]},type==${row[2]},href==${row[3]},updateTime==${row[4]}");
      menu = new Menu(row[0].toString(), row[1].toString(), row[2].toString(), row[3].toString());
      list.add(menu);
    }
    MenuModel menuModel = new MenuModel(0, "success", list);

    return menuModel;
  }
}
