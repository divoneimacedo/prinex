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
                                border: Border.all(width: 1,color: Colors.grey.shade400),
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)
                                )
                              ),
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(top: 10),
                    child: Column(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                    flex:7,
                                    child:Text("Embalagem",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),textAlign: TextAlign.left)
                                ),
                                Expanded(
                                    flex:3,
                                    child:Text("De 0 a 75 KM",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),)
                                ),

                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Expanded(
                                    flex:7,
                                    child:Text("Envelope 34 x 46: ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),textAlign: TextAlign.left,)
                                ),
                                Expanded(
                                    flex:3,
                                    child:Text("R\$25,00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),)
                                ),

                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Expanded(
                                    flex:7,
                                    child:Text("Caixa Pequena 12x16x17:",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),textAlign: TextAlign.left)
                                ),
                                Expanded(
                                    flex:3,
                                    child:Text("R\$32,20",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),)
                                ),

                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Expanded(
                                    flex:7,
                                    child:Text("Caixa Média 12x24x29,5:",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),textAlign: TextAlign.left)
                                ),
                                Expanded(
                                    flex:3,
                                    child:Text("R\$39,10",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),)
                                ),

                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Expanded(
                                    flex:7,
                                    child:Text("Caixa Grande 17x27,5x38:",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),textAlign: TextAlign.left)
                                ),
                                Expanded(
                                    flex:3,
                                    child:Text("R\$44,85",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),)
                                ),

                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Expanded(
                                    flex:7,
                                    child:Text("Vol. 1 50x40x30 – Max. 20 Kg:",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),textAlign: TextAlign.left)
                                ),
                                Expanded(
                                    flex:3,
                                    child:Text("R\$55,20",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),)
                                ),

                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Expanded(
                                    flex:7,
                                    child:Text("Vol. 2 70x50x30 – Max. 30 Kg:",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),textAlign: TextAlign.left)
                                ),
                                Expanded(
                                    flex:3,
                                    child:Text("R\$59,80",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),)
                                ),

                              ],
                            )
                          ],
                        ),
                        Column(

                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                    flex:7,
                                    child:Text("",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),textAlign: TextAlign.left)
                                ),
                                Expanded(
                                    flex:4,
                                    child:Text("De 76 a 150 KM",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),)
                                ),

                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Expanded(
                                    flex:7,
                                    child:Text("Envelope 34 x 46: ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),textAlign: TextAlign.left,)
                                ),
                                Expanded(
                                    flex:3,
                                    child:Text("R\$32,20",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),)
                                ),

                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Expanded(
                                    flex:7,
                                    child:Text("Caixa Pequena 12x16x17:",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),textAlign: TextAlign.left)
                                ),
                                Expanded(
                                    flex:3,
                                    child:Text("R\$39,10",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),)
                                ),

                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Expanded(
                                    flex:7,
                                    child:Text("Caixa Média 12x24x29,5:",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),textAlign: TextAlign.left)
                                ),
                                Expanded(
                                    flex:3,
                                    child:Text("R\$46,00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),)
                                ),

                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Expanded(
                                    flex:7,
                                    child:Text("Caixa Grande 17x27,5x38:",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),textAlign: TextAlign.left)
                                ),
                                Expanded(
                                    flex:3,
                                    child:Text("R\$56,35",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),)
                                ),

                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Expanded(
                                    flex:7,
                                    child:Text("Vol. 1 50x40x30 – Max. 20 Kg:",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),textAlign: TextAlign.left)
                                ),
                                Expanded(
                                    flex:3,
                                    child:Text("R\$66,70",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),)
                                ),

                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Expanded(
                                    flex:7,
                                    child:Text("Vol. 2 70x50x30 – Max. 30 Kg:",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),textAlign: TextAlign.left)
                                ),
                                Expanded(
                                    flex:3,
                                    child:Text("R\$71,30",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),)
                                ),

                              ],
                            )
                          ],
                        )

                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0,bottom: 5.0),
                    child: Text(texto.RetornaTexto("Titulo2"), style: TextStyle(color:Colors.green,fontWeight: FontWeight.bold,fontSize: 15),textAlign: TextAlign.left),

                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.grey.shade400),
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                          
                      )
                    ),
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(top: 10),
                    child:Column(
                        children: <Widget>[
                          Image.asset(texto.RetornaImage("Image1"),width: percent),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                            child:Text(texto.RetornaTexto("Explicacao1"),textAlign: TextAlign.justify,)
                          )
                          

                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1,color: Colors.grey.shade400),
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)

                        )
                    ),
                    padding: EdgeInsets.all(20),
                    margin:EdgeInsets.only(top: 10),
                    child:Column(
                      children: <Widget>[
                        Image.asset(texto.RetornaImage("Image2"),width: percent),
                        Padding(
                            padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                            child:Text(texto.RetornaTexto("Explicacao2"),textAlign: TextAlign.justify,)
                        )


                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1,color: Colors.grey.shade400),
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)

                        )
                    ),
                    padding: EdgeInsets.all(20),
                    margin:EdgeInsets.only(top: 10),
                    child:Column(
                      children: <Widget>[
                        Image.asset(texto.RetornaImage("Image3"),width: percent),
                        Padding(
                            padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                            child:Text(texto.RetornaTexto("Explicacao3"),textAlign: TextAlign.justify,)
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
    textos["Titulo1"] = "Valores:";
    textos["Titulo2"] = "Veja como funciona:";
    textos["Explicacao1"] = "Você vai até um dos nossos guichês (nos terminais rodoviários ou unidades de atendimento)";
    textos["Explicacao2"] = "Escolhe uma de nossas embalagens exclusivas (gratuitas)";
    textos["Explicacao3"] = "Sua encomenda é despachada no primeiro ônibus do destino escolhido.";
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
