import 'package:flutter/material.dart';
import 'package:whatsappflutter_app/modelos/conversa.dart';
class AbaContatos extends StatefulWidget {
  @override
  _AbaContatosState createState() => _AbaContatosState();
}

class _AbaContatosState extends State<AbaContatos> {
  List<Conversa> conversas = [
    Conversa("João", "Oi, tudo Blz??","https://osegredo.com.br/wp-content/uploads/2018/07/s%C3%ADndrome-de-sabe-830x450.jpg"),
    Conversa("Chaves", "Oi gata", "https://osegredo.com.br/wp-content/uploads/2018/07/s%C3%ADndrome-de-sabe-830x450.jpg"),
    Conversa("Moura", "Xonei","https://osegredo.com.br/wp-content/uploads/2018/07/s%C3%ADndrome-de-sabe-830x450.jpg"),

  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: conversas.length,
      itemBuilder: (context,index){
        Conversa conversa = conversas[index];
        return ListTile(
          contentPadding:EdgeInsets.fromLTRB(16, 8, 16, 8),
          leading: CircleAvatar(
            maxRadius: 30,
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(conversa.caminhoFoto),
          ),
          title: Text(conversa.nome,style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
        );
      },
      
    );
  }
}
