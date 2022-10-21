import 'package:cripto/homepage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    routes: {
     '/': (_) => HomePage(),
    },
  ));
}