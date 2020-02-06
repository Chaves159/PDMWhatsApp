import 'package:flutter/material.dart';
import 'package:whatsappflutter_app/modelos/conversa.dart';
class AbaConversas extends StatefulWidget {
  @override
  _AbaConversasState createState() => _AbaConversasState();
}

class _AbaConversasState extends State<AbaConversas> {
  List<Conversa> conversas = [
    Conversa("João", "Oi, tudo Blz??",""),
    Conversa("Chaves", "Oi gata"," "),
    Conversa("Moura", "Xonei",""),

  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: conversas.length,
      itemBuilder: (context,index){
        Conversa conversa = conversas[index];
        return ListTile(
          contentPadding: EdgeInsets.fromLTRB(16, 8, 16, 8),
          leading:CircleAvatar(
            backgroundColor: Colors.grey,
            maxRadius: 30,
            backgroundImage: NetworkImage("https://osegredo.com.br/wp-content/uploads/2018/02/pessoas-que-superam-a-depress%C3%A3o-830x450.jpg"),

          ),
          title: Text(conversa.nome,
              style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
          subtitle: Text(
            conversa.mensagem,
            style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal),),
          
        );
      },
    );


  }
}
