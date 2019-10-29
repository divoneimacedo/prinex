import 'dart:async';

import 'package:flutter/material.dart';
import 'package:prinex/ComoFunciona.dart';
import 'package:prinex/calculoPrinex.dart';
//import 'package:prinex/toast.dart';
import 'package:toast/toast.dart';
import 'package:youtube_player/youtube_player.dart';
import 'package:connectivity/connectivity.dart';

void main(){
  runApp(
    MaterialApp(
      home: Home(),
      routes: <String, WidgetBuilder>{
        "/ComoFunciona":(BuildContext context) => new ComoFunciona()
      },
    )
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class ColorHTML{
  Color hexToColor(String hexString, {String alphaChannel = 'FF'}) {
    return Color(int.parse(hexString.replaceFirst('#', '0x$alphaChannel')));
  }
}

class _HomeState extends State<Home> {
  Connectivity connectivity;
  StreamSubscription<ConnectivityResult> subscription;
  @override
  void initState(){
    super.initState();
    connectivity = new Connectivity();
    subscription = connectivity.onConnectivityChanged.listen((ConnectivityResult result){
       // print(result);
    });
  }

  @override
  void dispose(){
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context)  {
    TextConst text = TextConst();
    String _origemSelected;
    String _embalagemSelected;
    String _destinoSelected;
    List _fOrigem;
    List _origem;
    ReturnList retorno = ReturnList();
    String body = "vazio";
    //retorno.getData("http://www.princesadoscampos.com.br/prinex/json.php","origem");
    //_fOrigem = await retorno.getData("http://www.princesadoscampos.com.br/prinex/json.php","origem");
    /*_fOrigem.then((result){
        _origem =result;
    });*/
    //teste de comentario
    print(_origem);
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('images/logo_prinex.png',fit: BoxFit.cover),
        backgroundColor: Colors.lightGreen,


      ),
    body: SingleChildScrollView(
        child:Center(child: Container(
        padding:EdgeInsets.all(5),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("images/Banner1.jpg",fit: BoxFit.fitWidth,),
            Text("vazio"),
            Padding(
              padding: EdgeInsets.only(top: 5.0,bottom: 5.0),
              child:Text(text.tituloFacaTeste, style: TextStyle(color:Colors.green,fontWeight: FontWeight.bold,fontSize: 15),textAlign: TextAlign.left),
            ),
            Text(text.textoFacaTeste,textAlign: TextAlign.justify,),
            Padding(
              padding: EdgeInsets.only(top: 5.0,bottom: 5.0),
              child: Text(text.tituloVvejaComoFunciona, style: TextStyle(color:Colors.green,fontWeight: FontWeight.bold,fontSize: 15),textAlign: TextAlign.left),
            ),

            Padding(
                padding: EdgeInsets.only(top:5.0,bottom: 20.0),
                child:Text(text.textoVejaComoFunciona,textAlign: TextAlign.justify,)
            ),
            YoutubePlayer(
              context: context,
              source: "e3110hCwl6o",
              autoPlay: false,
              quality: YoutubeQuality.HIGH,
            ),

            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(width: 1,color: Colors.grey)
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 5,
                        child: DropdownButton<String>(
                          hint: Text("Origem"),
                          items: <String>['A', 'B', 'C', 'D'].map((String value) {
                            return new DropdownMenuItem<String>(
                              value: "A",
                              child: new Text(value),
                            );
                          }).toList(),
                          onChanged: (String newValue) {

                          },

                        ),
                      )
                    ],
                  )
                ],
              ),
            )

          ],

        ),
      ),
      ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Image.asset("images/logo_prinex.png",fit: BoxFit.contain,),
              decoration: BoxDecoration(
                color: Colors.lightGreen
              ),
            ),
            CustomListTile("Inicial",Icons.home, (){}),
            CustomListTile("Como funciona",Icons.question_answer, (){
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed("/ComoFunciona");
            }),
            CustomListTile("Agências",Icons.location_on, (){}),
            CustomListTile("Contato",Icons.contact_mail, (){}),
          ],
        ),
      ),
    );
  }
  void _toastEvent(String message){
    Toast.show(message, context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
  }




}

class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;
  //construtor
  CustomListTile(this.text,this.icon, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.green.shade400))
        ),
        child:InkWell(
          splashColor: Colors.lightGreen,
          onTap: onTap,
          child: Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon, color: Colors.lightGreen,),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(text, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.lightGreen),),
                    )
                  ],
                ),
                Icon(Icons.arrow_right, color: Colors.green,)
              ],
            ),
          ),
        ),
    )
    );
  }
}


/*class ComoFunciona extends StatelessWidget {
  /*final Home home;*/


  /*ComoFunciona({Key key,@required this.home}) : super(key: key);*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prinex - Como funciona"),
      ),
      body: SingleChildScrollView(
        child:Center(
          child: Column(
            children: <Widget>[
              Text("Texto como funciona")
            ],
          ),
        )
      ),
    );
  }
}*/


class TextConst{
  String tituloFacaTeste = "Faca um teste: 0800 42-1000";
  String textoFacaTeste = "O serviço de encomenda expressa ‘rodoviária a rodoviária’ chegou para suprir a sua necessidade de envio urgente. Sua encomenda é tratada com carinho e viaja nos exclusivos compartimentos Prinex da frota padrão Princesa dos Campos. ";
  String tituloVvejaComoFunciona = "Veja como funciona";
  String textoVejaComoFunciona = "Você vai até um dos nossos guichês (nos terminais rodoviários, agências ou unidades de atendimento), escolhe uma de nossas embalagens exclusivas (gratuitas) e sua encomenda é despachada no primeiro ônibus do destino escolhido.";
}

