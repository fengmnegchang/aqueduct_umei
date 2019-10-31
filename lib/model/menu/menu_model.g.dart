// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenuModel _$MenuModelFromJson(Map<String, dynamic> json) {
  return MenuModel(
      json['errorcode'] as int,
      json['msg'] as String,
      (json['data'] as List)
          ?.map((e) =>
              e == null ? null : Menu.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$MenuModelToJson(MenuModel instance) => <String, dynamic>{
      'errorcode': instance.errorcode,
      'msg': instance.msg,
      'data': instance.data
    };

Menu _$MenuFromJson(Map<String, dynamic> json) {
  return Menu(json['id'] as String, json['title'] as String,
      json['href'] as String, json['updateTime'] as String);
}

Map<String, dynamic> _$MenuToJson(Menu instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'href': instance.href,
      'updateTime': instance.updateTime
    };
