import 'package:flutter/material.dart';
import 'package:flutter_application_1_cats/Screens/cats_home_screen.dart';
import 'package:flutter_application_1_cats/data/all_cats.dart';
import 'package:flutter_application_1_cats/model/cat.dart';


final cats = allCats.map<Cat>((jsonCat)=> Cat.fromJson(jsonCat)).toList();
void main() {
   final listOfCatsJson =allCats;
   final listOfCatsAsObjects =<Cat>[];
   for(var i=0;i<listOfCatsJson.length;i++){
    final CatJson=listOfCatsJson[i];
    final CatsObject =Cat.fromJson(CatJson);
    listOfCatsAsObjects.add(CatsObject);
    }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  CatsHomeScreen(),
    );
  }
}



  