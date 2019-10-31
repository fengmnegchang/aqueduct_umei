import 'package:json_annotation/json_annotation.dart';

part 'menu_model.g.dart';

@JsonSerializable()
class MenuModel extends Object {
  @JsonKey(name: 'errorcode')
  int errorcode;

  @JsonKey(name: 'msg')
  String msg;

  @JsonKey(name: 'data')
  List<Menu> data;

  MenuModel(
    this.errorcode,
    this.msg,
    this.data,
  );

  factory MenuModel.fromJson(Map<String, dynamic> srcJson) => _$MenuModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MenuModelToJson(this);
}

@JsonSerializable()
class Menu extends Object {
  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'href')
  String href;

  @JsonKey(name: 'updateTime')
  String updateTime;

  Menu(
    this.id,
    this.title,
    this.href,
    this.updateTime,
  );

  factory Menu.fromJson(Map<String, dynamic> srcJson) => _$MenuFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MenuToJson(this);

}
