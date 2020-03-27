import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

//  own imports
import 'package:componentesflutter/src/pages/home_page.dart';
import 'package:componentesflutter/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componenetes',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('es', 'ES'), // English
      ],
      // home: Scaffold(body: HomePage()),
      initialRoute: '/',
      routes: getAplicationsRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (BuildContext context) => HomePage());
      },
    );
  }
}
