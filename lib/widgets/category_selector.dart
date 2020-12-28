import 'package:flutter/material.dart';
 class CategorySelector extends StatefulWidget {
  @override
  _CategorySelector createState() => _CategorySelector();
}

class _CategorySelector extends State<CategorySelector> {
  int selectorIndex = 0;
  final List<String> categories =['Massages','Online ', 'Groups','Request'];
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 55.0,
      color:Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:categories.length,
        itemBuilder:(BuildContext context ,int index){
          return GestureDetector(
            onTap: (){
              setState(() {
                selectorIndex= index;
              });
            },
            child:Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 5.0,
              ),
            child:Text(categories[index],
            style: TextStyle(
              color: index == selectorIndex ? Colors.white:Colors.white70,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
            ),
          ),
           ); 
        }
        ),
    );
  }
}