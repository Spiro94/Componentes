import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;
  bool _cambioSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Page'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            children: <Widget>[
              _crearSlider(),
              _crearCheckBox(),
              _crearSwitch(),
              Expanded(
                child: _crearImagen(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      // divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (_bloquearCheck)
          ? null
          : (valor) {
              //print(valor);
              setState(() {
                _valorSlider = valor;
              });
            },
    );
  }

  Widget _crearImagen() {
    return FadeInImage(
      width: _valorSlider,
      fit: BoxFit.contain,
      image: NetworkImage(
        'http://staticns.ankama.com/upload/backoffice/direct/2016-02-24/bb61a3f2a42c1c24f7c4e0717710bbe3.jpg',
      ),
      placeholder: AssetImage('assets/jar-loading.gif'),
    );
  }

  Widget _crearCheckBox() {
    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (activado) {
        setState(() {
          _bloquearCheck = activado;
        });
      },
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }
}
