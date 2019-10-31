import 'package:aqueduct/aqueduct.dart';
import 'model/menu/menu_model.dart';
import 'dart:async';
import 'package:aqueduct/aqueduct.dart';

import 'mysql1/mysql_manager.dart';

/**
    {
    "errorcode":0,
    "msg":"success",
    "data":[
    {
    "id":"1",
    "title":"图片",
    "href":"0",
    "updateTime":"http://www.979xe.com"
    },
    {
    "id":"2",
    "title":"小说",
    "href":"1",
    "updateTime":"http://www.979xe.com"
    },
    {
    "id":"3",
    "title":"视频",
    "href":"2",
    "updateTime":"http://www.979xe.com"
    },
    {
    "id":"4",
    "title":"电影",
    "href":"3",
    "updateTime":"http://www.979xe.com"
    }
    ]
    } */
class MenuController extends Controller {
  @override
  FutureOr<RequestOrResponse> handle(Request request) async {
    var results = await MySqlManager.query("SELECT id,title,type,href,updateTime FROM menu");
    Menu menu;
    List<Menu> list = new List();
    for (var row in results) {
      print("Id==${row[0]},title==${row[1]},type==${row[2]},href==${row[3]},updateTime==${row[4]}");
      menu = new Menu(row[0].toString(), row[1].toString(), row[2].toString(), row[3].toString());
      list.add(menu);
    }
    MenuModel menuModel = new MenuModel(0, "success", list);

    //final content = await File('asset/menu.json').readAsString();
    return Response.ok(menuModel.toJson());
  }
}
