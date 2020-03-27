import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

// Own imports

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    // cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    final res = await rootBundle.loadString('data/menu_opts.json');

    Map dataMap = json.decode(res);
    opciones = dataMap['rutas'];
    return opciones;
  }
}

final menuProvider = new _MenuProvider();
