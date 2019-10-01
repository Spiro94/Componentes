import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text('Soy el título de esta tarjeta'),
            subtitle: Text(
                'Aquí tenemos la descrición ... mostratles... sdfasdlkfjalksdjfajsdlkfjklasdjfkajsdf'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('OK'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      elevation: 10.0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://www.nationalgeographic.com/content/dam/photography/rights-exempt/best-of-photo-of-the-day/2018/landscapes/05-best_pod_landscapes.jpg'),
            fadeInDuration: Duration(milliseconds: 400),
            height: 300.0,
            fit: BoxFit.fill,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No se que poner acá'),
          ),
        ],
      ),
    );
  }
}
