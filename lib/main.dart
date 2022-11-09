import 'package:blog/blog.dart';
import 'package:flutter/material.dart';
import 'bindings/global_bindings.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  GlobalBindings().dependencies();
  runApp(const Blog());
}
