import 'package:flutter/material.dart';

void main() {
  runApp(MenuGTA());
}

class MenuGTA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Gerenciador de Tarefas"),
            centerTitle: true,
            backgroundColor: Colors.blue[900],
          ),
          body: ListaTarefa(),
        ));
  }
}
class Gerenciador {
  
  final String tarefa;
  final String data;

  Gerenciador(this.tarefa, this.data);
}

class ListaTarefa extends StatefulWidget {
  @override
  _ListaTarefaState createState() => _ListaTarefaState();
}

class _ListaTarefaState extends State<ListaTarefa> {
  List<Gerenciador> lista = [];
  String filtro;

  TextEditingController txtTarefa = new TextEditingController();
  TextEditingController txtData = new TextEditingController();


  Widget _itemLista(context, index) {

    return  filtro == null || filtro == "" ?
      Card(child: Padding(padding: EdgeInsets.all(20),
        child:ListTile(
                
                title: Text(
                  lista[index].tarefa,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                subtitle: Text(lista[index].data,
                    style: TextStyle(fontStyle: FontStyle.italic)),
      )))
      : lista[index].tarefa.toLowerCase().contains(filtro.toLowerCase()) ?
      Card(child: Padding(padding: EdgeInsets.all(20),
        child:ListTile(
                
                title: Text(
                  lista[index].tarefa,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                subtitle: Text(lista[index].data,
                    style: TextStyle(fontStyle: FontStyle.italic)),
      ))): Container();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                flex: 4,
                child: TextField(
                  controller: txtTarefa,
                  decoration: InputDecoration(
                      labelText: "Tarefa",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.1,
                        ),
                      )),
                  style: TextStyle(fontSize: 25.0),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                flex: 4,
                child: TextField(
                  controller: txtData,
                  decoration: InputDecoration(
                      labelText: "Data",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.1,
                        ),
                      )),
                  style: TextStyle(fontSize: 25.0),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                flex: 1,
                child: IconButton(
                  icon: Icon(Icons.add, color: Colors.blue[900], size: 30),
                  onPressed: () {
                    setState(() {
                      lista.add(Gerenciador(
                          txtTarefa.text, txtData.text));
                    });
                  },
                ),
              ),
              Flexible(
                flex: 1,
                child: IconButton(
                  icon: Icon(Icons.search, color: Colors.blue[900], size: 30),
                  onPressed: () {
                    setState(() {
                      filtro = txtTarefa.text;
                    });
                  },
                ),
              ),
            Flexible(
                flex: 1,
                child: IconButton(
                  icon: Icon(Icons.remove, color: Colors.blue[900], size: 30),
                  onPressed: () {
                    setState(() {
                      lista.removeAt(0);
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: lista.length, 
              itemBuilder: _itemLista,
            ),
          ),
        ],
      ),
    );
  }

}

