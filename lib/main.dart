import 'package:flutter/material.dart';
import 'package:prinex/toast.dart';
import 'package:youtube_player/youtube_player.dart';
void main(){
  runApp(
    MaterialApp(
      home: Home(),
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


  @override
  Widget build(BuildContext context) {
    TextConst text = TextConst();
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('images/logo_prinex.png',fit: BoxFit.cover),
        backgroundColor: Colors.lightGreen,


      ),
      body: Center(child: Container(
        padding:EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
            Image.asset("images/1.jpg",fit: BoxFit.fitWidth,),
            Row(
              children: <Widget>[
                Text(text.tituloFacaTeste, style: TextStyle(color:Colors.green,fontWeight: FontWeight.bold,fontSize: 15),)
              ],
            ),
            YoutubePlayer(
              context: context,
              source: "zCJLCogqRd",
              quality: YoutubeQuality.HIGH,
            ),

            RaisedButton(
              child: const Text("Pressione aqui"),
              onPressed: () => _toastEvent(),

            )
          ],
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
            ListTile(
              title: Text(
                  "Inicial",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.lightGreen),
              ),
              leading: Icon(Icons.home,color: Colors.lightGreen,),
            ),
            ListTile(
              title: Text("Como funciona?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.lightGreen),),
              leading: Icon(Icons.question_answer,color: Colors.lightGreen,),
            ),
            ListTile(
              title: Text("Agências",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.lightGreen),),
              leading: Icon(Icons.local_post_office,color: Colors.lightGreen,),
            ),
            ListTile(
              title: Text("Contato",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.lightGreen),),
              leading: Icon(Icons.contact_mail,color: Colors.lightGreen,),
            )
          ],
        ),
      ),
    );
  }
  void _toastEvent(){
    Toast.show("Toast plugin app", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
  }




}

class TextConst{
  String tituloFacaTeste = "Faca um teste: 0800 42-1000";
  String textoFacaTeste = "O serviço de encomenda expressa ‘rodoviária a rodoviária’ chegou para suprir a sua necessidade de envio urgente. Sua encomenda é tratada com carinho e viaja nos exclusivos compartimentos Prinex da frota padrão Princesa dos Campos. ";
  String tituloVvejaComoFunciona = "Veja como funciona";
  String textoVejaComoFunciona = "Você vai até um dos nossos guichês (nos terminais rodoviários, agências ou unidades de atendimento), escolhe uma de nossas embalagens exclusivas (gratuitas) e sua encomenda é despachada no primeiro ônibus do destino escolhido.";
}

