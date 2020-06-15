import 'package:flutter/material.dart';
import 'package:teste_projeto/first.dart';


class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(Icons.save,size: 125.0,color: Colors.black),
             TextField(keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: "Insira seu nome: ",
            labelStyle: TextStyle(color: Colors.black)
            ),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 20.0),
        ),
         TextField(keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: "Insira seu e-mail: ",
            labelStyle: TextStyle(color: Colors.black)
            ),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 20.0),
        ),
         TextField(keyboardType: TextInputType.visiblePassword, obscureText: true,
          decoration: InputDecoration(
            labelText: "Senha: ",
            labelStyle: TextStyle(color: Colors.black)
            ),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 20.0),
        ),
         TextField(keyboardType: TextInputType.visiblePassword, obscureText: true,
          decoration: InputDecoration(
            labelText: "Confirme sua senha: ",
            labelStyle: TextStyle(color: Colors.black)
            ),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 20.0),
        ),
        TextField(keyboardType: TextInputType.datetime,
          decoration: InputDecoration(
            labelText: "Insira sua data de nascimento: ",
            labelStyle: TextStyle(color: Colors.black)
            ),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 20.0),
        ),
        Padding(padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
          child: Container(
          height: 50.0,
          child: RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage()));
          },
        child: Text("Cadastrar",style: TextStyle(color: Colors.white,fontSize: 25.0),),
        color: Colors.blue[900],
        ),
        ),
        ),
          ],
          ),
        )
    );
  }
}