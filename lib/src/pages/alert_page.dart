import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  //const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar alerta!'),
          onPressed: () => _mostrarAlerta(context),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            title: Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Este es el contenido de la alerta'),
                FlutterLogo(
                  size: 100.0,
                )
              ],
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () => Navigator.of(context).pop(),
              ),
              FlatButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }
}
