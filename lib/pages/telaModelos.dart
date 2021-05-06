import 'package:flutter/material.dart';

class TelaModelos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xff00003D)),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(
          top: 20,
          left: 10,
          right: 10,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * .8,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'Modelos',
                style: TextStyle(
                  fontSize: 60,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 50),
              ContainerText(
                text: 'Camiseta',
              ),
              ContainerText(
                text: 'Camiseta Polo',
              ),
              ContainerText(
                text: 'Camisa Social',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerText extends StatelessWidget {
  const ContainerText({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed('/tela3');
        },
        child: Container(
          width: MediaQuery.of(context).size.width * .9,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[100],
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 50,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
