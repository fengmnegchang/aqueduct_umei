import 'dart:convert';
import 'dart:io';

import 'package:aqueduct/aqueduct.dart';
import 'package:umei_restapi/model/menu/menu_model.dart';
import 'dart:async';
import 'package:umei_restapi/mysql1/mysql_manager.dart';
import 'package:umei_restapi/service/menu_service.dart';

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
class MenuController extends ResourceController {
  @override
  FutureOr<RequestOrResponse> handle(Request request) async {
    print("path===" + request.path.string);
    print("method===" + request.method);
    if ("/menu/getMenu" == request.path.string) {
      MenuModel menuModel = await MenuService.getMenu();
      return Response.ok(menuModel.toJson());
    }

    final content = await File('asset/menu.json').readAsString();
    return Response.ok(json.decode(content));
  }
}
