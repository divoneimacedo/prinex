import 'package:flutter/material.dart';

class ComoFunciona  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Textos texto = Textos();
    texto.Construtor();
    return Scaffold(
      appBar: AppBar(
        title: Text("Como funciona"),
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Container(
              padding: EdgeInsets.all(3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(texto.RetornaTexto("Titulo1"), style: TextStyle(color:Colors.green,fontWeight: FontWeight.bold,fontSize: 15),textAlign: TextAlign.left),
                  )
                ],
              ),
            ),
        ),
      ),
    );
  }
}


class Textos{
  Map<String,String> textos = new Map();
  Map<String,String> img = new Map();
  Construtor(){
    textos["Titulo1"] = "Veja como funciona:";
    textos["Explicacao1"] = "Você vai até um dos nossos guichês (nos terminais rodoviários ou unidades de atendimento)";
    textos["Explicacao2"] = "Escolhe uma de nossas embalagens exclusivas (gratuitas)";
    textos["Explicacao2"] = "Sua encomenda é despachada no primeiro ônibus do destino escolhido.";
    img["Image1"] = "images/ComoFunciona1.png";
    img["Image2"] = "images/ComoFunciona2.png";
    img["Image3"] = "images/ComoFunciona3.png";
  }

  String RetornaTexto(String key){
    return textos[key];
  }

  String RetornaImage(String key){
    return img[key];

  }

}
