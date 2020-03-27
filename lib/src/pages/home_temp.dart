import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final Opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Component Tempt"),
      ),
      body: ListView(children: _crearItemsCorta()),
      // body: ListView(children: _crearItems()),
    );
  }

  // List<Widget> _crearItems() {
  //   List<Widget> lista = new List<Widget>();

  //   for (String item in Opciones) {
  //     final widgetTemporal = ListTile(
  //       title: Text(item),
  //     );

  //     lista..add(widgetTemporal)..add(Divider());

  //     // es lo mismo que:

  //     // lista.add(widgetTemporal);
  //     // lista.add(Divider());

  //   }

  //   return lista;
  // }

  List<Widget> _crearItemsCorta() {
    return Opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text("Subtitulo de pagina"),
            leading: Icon(Icons.accessibility_new),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Divider(thickness: 1)
        ],
      );
    }).toList();
  }
}
