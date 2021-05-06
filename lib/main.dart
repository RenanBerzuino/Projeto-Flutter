import 'package:flutter/material.dart';
import 'package:projeto_flutter/pages/sobre_app.dart';
import 'package:projeto_flutter/pages/telaModelos.dart';
import 'package:provider/provider.dart';
import 'package:projeto_flutter/pages/clientes.dart';
import 'package:projeto_flutter/pages/telaPrincipal.dart';
import 'package:projeto_flutter/pages/Telalogin.dart';
import 'package:projeto_flutter/pages/TelaPedido.dart';
import 'package:projeto_flutter/pages/user_form.dart';
import 'package:projeto_flutter/provider/userProvider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (ctx) => Users(),
    child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'DSirius',
        initialRoute: '/',
        routes: {
          '/': (_) => TelaLogin(),
          '/telaPrincipal': (_) => TelaPrincipal(),
          '/tela0': (_) => Cadastro_Cliente(),
          '/tela1': (_) => TelaModelos(),
          '/tela2': (_) => SobreApp(),
          '/tela3': (_) => TelaPedido(),
          '/tela4': (_) => UserForm(),
        }),
  ));
}
