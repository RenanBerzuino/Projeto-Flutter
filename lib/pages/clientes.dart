import 'package:flutter/material.dart';
import 'package:projeto_flutter/components/UserTile.dart';
import 'package:provider/provider.dart';
import 'package:projeto_flutter/provider/userProvider.dart';

// ignore: camel_case_types
class Cadastro_Cliente extends StatefulWidget {
  @override
  _Cadastro_ClienteState createState() => _Cadastro_ClienteState();
}

// ignore: camel_case_types
class _Cadastro_ClienteState extends State<Cadastro_Cliente> {
  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('CLIENTES'),
      ),
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(
          top: 50,
          left: 10,
          right: 10,
        ),
        child: ListView.builder(
          itemCount: users.count,
          itemBuilder: (ctx, i) => UserTile(users.byIdenx(i)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/tela4');
        },
        tooltip: 'Adicionar',
        child: Icon(Icons.add),
      ),
    );
  }
}
