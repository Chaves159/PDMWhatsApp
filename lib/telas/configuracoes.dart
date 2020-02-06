import 'package:flutter/material.dart';

class Configuracoes extends StatefulWidget {
  @override
  _ConfiguracoesState createState() => _ConfiguracoesState();
}

class _ConfiguracoesState extends State<Configuracoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configurações"),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                        onPressed: () {
                          print("Galeria clicada");
                        },
                        child: Text("Galeria")),
                    FlatButton(
                        onPressed: () {
                          print("Camera clicada");
                        },
                        child: Text("Camera"))
                  ],
                ),
                TextField(
                  decoration:InputDecoration(
                    hintText: "Nome",
                    border: OutlineInputBorder(borderRadius:BorderRadius.circular(30) ),
                    contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                    filled: true,
                    fillColor: Colors.white,

                  ) ,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
