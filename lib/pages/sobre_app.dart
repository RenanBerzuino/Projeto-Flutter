import 'package:flutter/material.dart';

class SobreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff00003D),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(
          top: 50,
          left: 20,
          right: 20,
        ),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .5,
                  height: MediaQuery.of(context).size.height * .28,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(300),
                      image: DecorationImage(
                          image: AssetImage('lib/imagens/renandiniz.png'),
                          fit: BoxFit.fitHeight)),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .9,
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xff00003D),
                  ),
                  padding: EdgeInsets.only(
                    top: 20,
                    left: 20,
                    right: 20,
                  ),
                  child: ListView(
                    children: [
                      Text(
                        '   Esse App foi desenvolvido por Renan Berzuino Diniz.\n\n' +
                            '   Tem como Objetivo facilitar no gerenciamento de pedidos e clientes, ' +
                            'até o momento está em progresso mas acreditamos que este ano finalizamos a versão 1.0.\n\n' +
                            ' Qualquer duvida ou sugestão, porfavor informe em...\n renanberzuino@gmail.com',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.amber,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Voltar',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue[400],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
