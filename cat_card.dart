import 'package:flutter/material.dart';
import 'package:flutter_application_1_cats/Screens/cats_details_Screen.dart';
import 'package:flutter_application_1_cats/model/cat.dart';

class CatCard extends StatelessWidget {
  final String imageLink;
  final String catName;
 
  const CatCard({
    super.key, 
    required this.imageLink, 
    required this.catName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder:(context)  {
          return CatDetailsScreen(cat: cat);

      }));

      },
      child: Card(
        child: Column(
        children: [
          // Cat Image
           Expanded(
              child: Image.network(
              width:double.infinity,
              fit: BoxFit.fitWidth,
              imageLink),
              ),
          // Cat name
          Text (cat.name, style: TextStyle(fontSize: 24),)
        ],
      )),
    );
  }
}