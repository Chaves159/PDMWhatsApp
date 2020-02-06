import 'package:flutter/material.dart';
import 'package:whatsappflutter_app/modelos/usuario.dart';
//import 'fire';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  String _mensagemErro = " ";


 void _validarCampos(){
    String email = _controllerEmail.text;
    String senha = _controllerSenha.text;

    if(email.isNotEmpty && email.contains("@")) {
      if(senha.isNotEmpty){
        setState(() {
          this._mensagemErro = "";
        });
      Usuario usuario = Usuario();
      usuario.email = email;
      usuario.senha = senha;
      //_logarUsuario(usuario);
      }else{
        setState(() {
          this._mensagemErro = "Insira uma Senha Valida!";
        });

      }
    } else{
      setState(() {
        this._mensagemErro = "Insira um E-mail Valido!";
      });
    }
  }
  /*void _logarUsuario(Usuario usuario){
   FirebaseAuth firebaseAuth = FirebaseAuth.instance;
   firebaseAuth.singInWithEmailAndPassword(
      email: usuario.email, password: usuario.senha)
   .then(firebaseUser){
     Navigator.pushReplacementNamed(context, "/home");

   }.cathError((erro){
     setState(() {
       _mensagemErro = "Erro ao autenticar o Usuario, Verifique e-mail e senha!";
     });
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xff075E04)),
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 32),
                  child: Image.asset(
                    "imagens/logo.png",
                    width: 200,
                    height: 150,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: TextField(
                    controller: _controllerEmail,
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Email",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: TextField(
                    controller: _controllerSenha,
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Senha",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 10),
                  child: RaisedButton(
                    child: Text("Entrar"),
                    color: Colors.green,
                    padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    onPressed: () {
                      _validarCampos();
                    },
                  ),
                ),
                Center(
                  child: GestureDetector(
                    child: Text(
                      "Não Tem Conta? Cadastre-se!",
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: (){},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text(_mensagemErro,style: TextStyle(color: Colors.red,fontSize: 20),)
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
