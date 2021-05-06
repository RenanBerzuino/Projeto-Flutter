import 'package:flutter/material.dart';
import 'package:projeto_flutter/data/Tamanhos.dart';

class ListTamanhos extends StatefulWidget {
  const ListTamanhos({
    Key key,
    this.tamanho,
  }) : super(key: key);

  final Tamanhos tamanho;
  @override
  _ListTamanhosState createState() => _ListTamanhosState();
}

class _ListTamanhosState extends State<ListTamanhos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[600],
                      ),
                      width: 40,
                      height: 30,
                      child: Center(child: Text(widget.tamanho.tamanho[index])),
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blueGrey[100],
                      ),
                      width: 40,
                      height: 30,
                      child: TextField(
                        style: TextStyle(color: Colors.black),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Qtde',
                          labelStyle: TextStyle(fontSize: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
