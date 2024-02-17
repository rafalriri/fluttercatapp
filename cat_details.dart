import 'package:flutter/material.dart';

class CatDetailsWidget extends StatelessWidget {
  final cat;
 
  const CatDetailsWidget({super.key,required this.cat});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
     children: [
      //Cat Image
      Image.network(
        cat.imageLink),
      //Cat Name
      Text('cat name',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),
      ),
      //Cat Info
      Text('Origin: ${cat.origin}'),
      Text('MaxWeight:${cat.maxWeight} '),
      Text('MinWeight: ${cat.minWeight}'),
      Text('Length: ${cat.length}'),
      Text('intelligence: ${cat.i}'),
    
    
     ], 
    );
  }
}