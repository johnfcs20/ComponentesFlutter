import 'package:flutter/material.dart';

// Own imports

import 'package:componentesflutter/src/pages/alert_page.dart';
import 'package:componentesflutter/src/pages/avatar_page.dart';
import 'package:componentesflutter/src/pages/home_page.dart';
import 'package:componentesflutter/src/pages/card_pages.dart';
import 'package:componentesflutter/src/pages/animated_container.dart';
import 'package:componentesflutter/src/pages/input_page.dart';
import 'package:componentesflutter/src/pages/slide_pages.dart';
import 'package:componentesflutter/src/pages/listView_page.dart';

Map<String, WidgetBuilder> getAplicationsRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
    'list': (BuildContext context) => ListaPage()
  };
}
