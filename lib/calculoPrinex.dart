import 'package:http/http.dart' as http;
import 'dart:async';




class Api{
  static Future getData(String url, String metodo) async {
    return await http.post(url,body: {"metodo":metodo});
  }
}