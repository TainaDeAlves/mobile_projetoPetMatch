
import 'package:app_projetopetmatch/detalhesPet.dart';
import 'package:app_projetopetmatch/home.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
title: "PetMatch",
theme: ThemeData(
  primaryColor: const Color.fromARGB(255, 255, 255, 255),
),
home: const HomePage(),
  ));
}