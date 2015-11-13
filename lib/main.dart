library fitzgerald;

import 'package:flutter/material.dart';

part 'src/pages/landing.dart';
part 'src/pages/about.dart';

final _routes = {
  '/': (RouteArguments args) => new LandingPage(),
  '/about': (RouteArguments args) => new AboutPage()
};

final ThemeData _theme = new ThemeData(
  brightness: ThemeBrightness.light,
  primarySwatch: Colors.purple
);

void main() {
  runApp(
    new MaterialApp(
      title: "Fitzgerald",
      routes: _routes,
      theme: _theme
    )
  );
}
