import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';

import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('es'),
        const Locale('en'),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Componentes APP',
      // home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRotes(),
      onGenerateRoute: (settings) {
        //print('Ruta llamada: ${settings.name}');

        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
    );
  }
}
