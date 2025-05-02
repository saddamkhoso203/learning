import 'package:flutter/material.dart';


void main(){
  runApp(TaskTow());
}
class TaskTow extends StatelessWidget {
  const TaskTow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(

            children: [
              Expanded(
                child: Column(
                  children: [
                    Text("Strawberry Pavlova",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                    SizedBox(height: 20,),
                    Text("Pavlova is a meringue-based dessert named after the russian ballerine Anna Pavlova."
                        "Pavlova features a crisp Crust and soft, light inside topped with fruit and whipped cream",style: TextStyle(
                      fontSize: 25,
                    ),),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [
                            Icon(Icons.star,size: 25,),
                            Icon(Icons.star,size: 25,),
                            Icon(Icons.star,size: 25,),
                            Icon(Icons.star,size: 25,),
                            Icon(Icons.star,size: 25,),
                            SizedBox(width: 80,),
                            Text("170 Reviews ",style: TextStyle(fontSize: 25,),),

                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [Icon(Icons.schedule,size: 25,color: Colors.green,),
                            Text("PREP",style: TextStyle(fontSize: 25),),
                            Text("25 min",style: TextStyle(fontSize: 25),),],
                        ),


                        Column(
                          children: [
                            Icon(Icons.timer,size: 25,color: Colors.green,),
                            Text("COOK",style: TextStyle(fontSize: 25),),
                            Text("1 hr",style: TextStyle(fontSize: 25),),

                          ],
                        ),

                        Column(
                          children: [
                            Icon(Icons.restaurant,size: 25,color: Colors.green,),
                            Text("FEEDS:",style: TextStyle(fontSize: 25),),
                            Text("4-6",style: TextStyle(fontSize: 25),),

                          ],
                        ),




                      ],
                    ),


                  ],
                ),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWKPXZg93F4QGvmnSoX3x1KNgVhn8oJsy33A&s",
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}