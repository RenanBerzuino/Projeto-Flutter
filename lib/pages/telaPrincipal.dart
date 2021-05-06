import 'package:flutter/material.dart';
import 'package:projeto_flutter/components/Slide_tile.dart';

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  final PageController _pageController = PageController(viewportFraction: 0.65);

  int _currentPage = 0;
  var _listSlide = [
    {'id': 0, 'image': 'lib/imagens/clientes.png'},
    {'id': 1, 'image': 'lib/imagens/pedido.png'},
    {'id': 2, 'image': 'lib/imagens/SobreApp.png'}
  ];

  @override
  void initState() {
    _pageController.addListener(() {
      int next = _pageController.page.round();
      if (_currentPage != next) {
        setState(() {
          _currentPage = next;
        });
      }
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff00003D),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: _listSlide.length,
                  itemBuilder: (_, currentIdenx) {
                    bool activePage = currentIdenx == _currentPage;
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/tela$_currentPage');
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          top: 100,
                          bottom: 20,
                        ),
                        child: SlideTile(
                          activePage: activePage,
                          image: _listSlide[currentIdenx]['image'],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            _buldBullets()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        tooltip: 'Adicionar',
        child: Icon(Icons.arrow_back),
      ),
    );
  }

  Widget _buldBullets() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            width: 15,
            height: 15,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.amber),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 15,
            height: 15,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.grey),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 15,
            height: 15,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.grey),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 15,
            height: 15,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
