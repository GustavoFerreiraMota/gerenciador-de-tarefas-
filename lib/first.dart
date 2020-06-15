import 'package:flutter/material.dart';
import 'package:teste_projeto/reset_password.dart';
import 'package:teste_projeto/third.dart';


class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title:Text("Gerenciador de tarefas"),
      centerTitle: true,
      backgroundColor: Colors.blue[900],
      actions: <Widget>[
        IconButton(icon: Icon(Icons.refresh),
          onPressed: () {},)
      ],
    ),
    backgroundColor: Colors.white,
    body: SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 50.0),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Icon(Icons.school, size: 125.0,color: Colors.black),
        TextField(keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: "Insira seu e-mail: ",
            labelStyle: TextStyle(color: Colors.black)
            ),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 30.0),
        ),
        TextField(keyboardType: TextInputType.visiblePassword, obscureText: true,
          decoration: InputDecoration(
            labelText: "Senha: ",
            labelStyle: TextStyle(color: Colors.black)
            ),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 30.0),
        ),
        Padding(padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
          child: Container(
          height: 50.0,
          child: RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdPage()));
          },
        child: Text("Entrar",style: TextStyle(color: Colors.white,fontSize: 25.0),),
        color: Colors.blue[900],
        ),
        ),
        ),
        
        Container(child: RaisedButton(onPressed: (){},
          child: RaisedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPassword()));
            },
            child: Text("Esqueceu a asenha?",
              style: TextStyle(color: Colors.white, fontSize: 15.0),),
            color: Colors.blue[900],
          ),
        ),
        ),
      ],
    ),
    ),
    );
  }
}