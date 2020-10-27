import 'package:flutter/material.dart';
import 'package:lab1/pages/pagecode1.dart';
import 'package:lab1/pages/result.dart';

void main() => runApp(MaterialApp(
  routes: {
    '/':(context) => WaiSiang(),
    '/result': (context) => result(),
  },
));
