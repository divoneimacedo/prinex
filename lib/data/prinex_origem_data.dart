import 'dart:async';
import 'package:prinex/data/prinex_data.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class OrigemRepositorio implements PrinexRepositorio{
  String _metodo = "origem";
  String _url = "http://www.princesadoscampos.com.br/prinex/json.php";
  Map data;
  List listData;
  @override
  Future<List<Prinex>> fetchDados() {
    //http.Response  = await http.post(this._url,body: {"metodo":this._metodo});
    return new Future.value(dados);
  }

  Future<List> getData(String url, String metodo) async {
    http.Response response = await http.post(url,body: {"metodo":metodo});
    if(response.statusCode==200) {
      //debugPrint(response.body);
      //debugPrint(response.statusCode.toString());
      data = json.decode(response.body);
      listData = data["origem"];
      //debugPrint(listData.toString());
      //return listData;

    }else{
      listData = null;
    }
    return listData;
  }

  var dados = <Prinex>[new Prinex(origem: "Ponta Grossa"),new Prinex(origem:"Curitiba")];
}
