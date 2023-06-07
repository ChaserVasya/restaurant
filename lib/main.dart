import 'package:flutter/cupertino.dart';
import 'package:restaurant/application/app.dart';
import 'package:restaurant/application/di/di.dart';

void main() {
  configureDependencies();
  runApp(const App());
}
