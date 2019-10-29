import 'dart:async';

class Prinex{
  String origem;

  Prinex({this.origem});

  Prinex.fromMap(Map<String,dynamic> map)
  : origem = map['origem'];

}

abstract class PrinexRepositorio{
  Future<List<Prinex>> fetchDados();
}

class FetchDataException implements Exception{
  final _message;
  FetchDataException([this._message]);
  String toString(){
    if(_message==null) return "Exception";
    return "Exception: $_message";
  }
}