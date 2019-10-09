import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
//converter http response para JSON
import 'dart:convert';

class Origem{
  String _idOrigem;
  String _origem;
  Origem(this._idOrigem,this._origem);
}

class Destino{
  String _idDestino;
  String _destino;
  Destino(this._idDestino,this._destino);
}

class ReturnList{
  Map data;
  List listData;
  Future getData(String url, String metodo) async {
    http.Response response = await http.post(url,body: {"metodo":metodo});
    if(response.statusCode==200) {
      debugPrint(response.body);
      debugPrint(response.statusCode.toString());
    }else{
      debugPrint("erro ao contectar");
    }
  }
}