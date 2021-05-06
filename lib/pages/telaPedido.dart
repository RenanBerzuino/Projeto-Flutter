import 'package:flutter/material.dart';
import 'package:projeto_flutter/data/Tamanhos.dart';
import 'package:projeto_flutter/pages/widget/Container_Tamanho/FormTamanho/list_tamanhos.dart';

class TelaPedido extends StatefulWidget {
  const TelaPedido({
    Key key,
    this.tamanho,
  }) : super(key: key);

  final Tamanhos tamanho;
  @override
  _TelaPedidoState createState() => _TelaPedidoState();
}

class _TelaPedidoState extends State<TelaPedido> {
  String valueChoose;
  bool checkSilk = true;
  bool checkBordado = true;
  List listTipoTecido = [
    "malha Fria",
    "piquet",
    "Brim",
    "Oxford",
    "Tricoline",
    "two Way",
    "Tactel",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff00003D),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(
          top: 20,
          left: 10,
          right: 10,
        ),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .32,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('lib/imagens/Camiseta.png'),
                          fit: BoxFit.fitHeight)),
                ),
                SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width * .86,
                  height: 106,
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    bottom: 10,
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.grey[600],
                              border: Border.fromBorderSide(
                                BorderSide(color: Colors.grey[800]),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'TECIDO',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.044,
                            padding: EdgeInsets.symmetric(horizontal: 4.5),
                            decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(5)),
                            child: Expanded(
                              flex: 1,
                              child: DropdownButton(
                                hint: Text('Tecidos'),
                                value: valueChoose,
                                icon: Icon(Icons.arrow_drop_down),
                                onChanged: (newValue) {
                                  setState(() {
                                    valueChoose = newValue;
                                  });
                                },
                                items: listTipoTecido.map((valueItem) {
                                  return DropdownMenuItem(
                                      value: valueItem, child: Text(valueItem));
                                }).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 30),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Silk-Screen',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                              Checkbox(
                                  checkColor: Colors.white,
                                  value: checkSilk,
                                  onChanged: (bool value) {
                                    setState(() {
                                      checkSilk = value;
                                    });
                                  })
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Bordado',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                              Checkbox(
                                  checkColor: Colors.white,
                                  value: checkBordado,
                                  onChanged: (bool value) {
                                    setState(() {
                                      checkBordado = value;
                                    });
                                  })
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    bottom: 7,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.37,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey[600],
                          border: Border.fromBorderSide(
                            BorderSide(color: Colors.grey[800]),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Básico',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                      SizedBox(width: 35),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.37,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey[600],
                          border: Border.fromBorderSide(
                            BorderSide(color: Colors.grey[800]),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Baby Look',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTamanhos(tamanho: ltstamanho[0]),
                    SizedBox(width: 30),
                    ListTamanhos(tamanho: ltstamanho[0]),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Salvar',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue[400],
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                    SizedBox(
                      width: 100,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Voltar',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue[400],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
