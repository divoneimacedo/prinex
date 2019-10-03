import 'package:flutter/material.dart';
import 'package:prinex/toast.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('images/logo_prinex.png',fit: BoxFit.cover),
        backgroundColor: Colors.lightGreen,


      ),
      body: Center(child: Container(
        child: Column(
          children: <Widget>[
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
                  "INICIAL",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
              ),
              leading: Icon(Icons.home),
            ),
          ],
        ),
      ),
    );
  }
  void _toastEvent(){
    Toast.show("Toast plugin app", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
  }

}

