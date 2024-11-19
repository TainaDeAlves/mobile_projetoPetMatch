
import 'package:app_projetopetmatch/adotar.dart';
import 'package:app_projetopetmatch/home.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
title: "PetMatch",
theme: ThemeData(
  primaryColor: Colors.white,
),
home: const AdotarPet(

),
  ));
}