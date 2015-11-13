library fitzgerald;

import 'package:flutter/material.dart';

part 'src/page_frame.dart';
part 'src/pages/novels.dart';
part 'src/pages/novellas.dart';
part 'src/pages/about.dart';

enum Page {
  novels,
  novellas,
  short_stories,
  quotes,
  pictures,
  about
}

final _routes = {
  '/': (RouteArguments args) => new PageFrame()
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
