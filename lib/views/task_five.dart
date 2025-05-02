

import 'package:flutter/material.dart';

class TaskFive extends StatefulWidget {
  const TaskFive({super.key});

  @override
  State<TaskFive> createState() => _TaskFiveState();
}

class _TaskFiveState extends State<TaskFive> {
  List<String> furnitureItems = [
    "Sofa",
    "Coffee Table",
    "Dining Table",
    "Armchair",
    "Bed",
    "Wardrobe",
    "Bookcase",
    "TV Stand",
    "Desk",
    "Recliner",
    "Side Table",
    "Chest of Drawers",
    "Ottoman",
    "Rocking Chair",
    "Console Table",
    "Nightstand",
    "Dresser",
    "Bar Stool",
    "Loveseat",
    "Patio Furniture"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Categories", style: TextStyle(color: Colors.blue,fontSize: 12, fontWeight: FontWeight.w700),

            ),
            Icon(Icons.shop, color: Colors.blue,),
          ],
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:




          ListView.builder(
              itemCount: furnitureItems.length,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemBuilder:( context, int index){
            return Container(
              width: 150,
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Center(
                child: Text(
                  furnitureItems[index],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ) ;
          })



          
      ),
    );
  }
}
