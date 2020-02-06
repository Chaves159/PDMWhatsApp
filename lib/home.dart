import 'package:flutter/material.dart';
import 'telas/contatos.dart';
import 'telas/conversas.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;
  List<String> itensMenu = ["Configurações" , "Deslogar"];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  void _escolhaMenuItem(String itemEscolhido){
    print("Item escolhido: $itemEscolhido");
    switch (itemEscolhido){
      case 'Configurações' :
        //Navigator.pushNamed(context, "/configuracoes");
        break;
      case 'Deslogar' :
        //_deslogarUsuario();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        bottom: TabBar(
          indicatorWeight: 4,
          indicatorColor: Colors.white,
          labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              text: "Conversas",
            ),
            Tab(
              text: "Contatos",
            )
          ],
        ),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected:_escolhaMenuItem,

            itemBuilder: (context) {
              return itensMenu.map((String item){
                return PopupMenuItem(
                  value: item,
                  child: Text(item),
                );
              }).toList();
            },
          )
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          AbaConversas(),
          AbaContatos(),
        ],
      ),
    );
  }
}
