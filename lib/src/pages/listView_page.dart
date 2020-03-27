import 'package:flutter/material.dart';
import 'dart:async';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  ScrollController _scrollController = new ScrollController();

  List<int> _listaNumeros = new List();
  int _utlimoNumero = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    this._agregarImagen();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Listas')),
        body: Stack(
          children: <Widget>[_crearLista(), _crearLoading()],
        ));
  }

  Widget _crearLista() {
    return RefreshIndicator(
        onRefresh: obtenerPaginaOne,
        child: ListView.builder(
            controller: _scrollController,
            itemCount: _listaNumeros.length,
            itemBuilder: (BuildContext context, int index) {
              final imagen = _listaNumeros[index];
              return FadeInImage(
                image: NetworkImage(
                    'https://picsum.photos/500/300/?image=$imagen'),
                placeholder: AssetImage('assest/loading_flutter.gif'),
              );
            }));
  }

  Future<Null> obtenerPaginaOne() async {
    final duration = new Duration(seconds: 2);
    new Timer(duration, () {
      _listaNumeros.clear();
      _utlimoNumero++;
      _agregarImagen();
    });

    return Future.delayed(duration);
  }

  _agregarImagen() {
    for (var i = 1; i < 10; i++) {
      _utlimoNumero++;
      _listaNumeros.add(_utlimoNumero);
    }

    setState(() {});
  }

  Future<Null> fetchData() async {
    _isLoading = true;
    setState(() {});
    final duration = new Duration(seconds: 2);
    new Timer(duration, respuestahttp);
  }

  void respuestahttp() {
    _isLoading = false;
    _scrollController.animateTo(_scrollController.position.pixels + 100,
        duration: Duration(milliseconds: 250), curve: Curves.fastOutSlowIn);
    this._agregarImagen();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  _crearLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[CircularProgressIndicator()],
          ),
          SizedBox(height: 15.0)
        ],
      );
    } else {
      return Container();
    }
  }
}
