import 'package:aqueduct/aqueduct.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';

class MenuController extends Controller {

  @override
  FutureOr<RequestOrResponse> handle(Request request) async {
    // TODO: implement handle
    final content = await File('asset/menu.json').readAsString();
    return Response.ok(json.decode(content));
  }
}