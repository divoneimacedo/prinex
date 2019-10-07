import 'package:flutter/material.dart';

class ComoFunciona  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Textos texto = Textos();
    texto.Construtor();
    double width = MediaQuery.of(context).size.width;
    double percent = width * 0.65;
    return Scaffold(
      appBar: AppBar(
        title: Text("Como funciona"),
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(width: 3,color: Colors.yellow)
              ),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 5.0,bottom: 5.0),
                    child: Text(texto.RetornaTexto("Titulo1"), style: TextStyle(color:Colors.green,fontWeight: FontWeight.bold,fontSize: 15),textAlign: TextAlign.left),

                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.grey),
                    ),
                    padding: EdgeInsets.all(5),
                    child:Column(
                        children: <Widget>[
                          Image.asset(texto.RetornaImage("Image1"),width: percent),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                            child:Text(texto.RetornaTexto("Explicacao1"),textAlign: TextAlign.justify,)
                          )
                          

                      ],
                    ),
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
