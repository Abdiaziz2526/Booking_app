import 'package:flutter/material.dart';

class SpaceOne extends StatelessWidget {
  const SpaceOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 200, width: 430,
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(image: AssetImage("asset/space1.jpg"), fit: BoxFit.cover),
                
              ),
              // child: Column(
              //   children: [
                 
              //   ],
              // ),
            ),
            Padding(
              padding: const EdgeInsets.all(7),
              child: Column(
                children: [  
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber,
                      size: 30,
                      ),
                      Icon(Icons.star, color: Colors.amber,
                      size: 30,
                      ),
                      Icon(Icons.star, color: Colors.amber,
                      size: 30,
                      ),
                      Icon(Icons.star, color: Colors.amber,
                      size: 30,
                      ),
                      
                    ],
                    
                  ),
                  SizedBox(height: 5,),
                  Container(
                    margin: EdgeInsets.only(left: 7),
                    child: Row(
                      children: [
                        Text("Hotel Stanford",
                        style: TextStyle(
                          fontSize: 25
                        ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                  margin: EdgeInsets.only(left: 2),
                    child: Row(
                    children: [
                    Icon(Icons.location_on),
                    Text("Arrondissement de Paris",
                    style: TextStyle(
                      fontSize: 17
                    ),
                    )
                              
                    ],),
                  )
                  
                ],
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 150, width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.blue,
                      image: DecorationImage(image: 
                      AssetImage("asset/h.jpg"),
                      fit: BoxFit.cover
                      )
                    ),

                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 150, width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.blue,
                      image: DecorationImage(image: 
                      AssetImage("asset/h.jpg"),
                      fit: BoxFit.cover
                      )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 150, width: 150, 
                    decoration: BoxDecoration(
                      image: DecorationImage(image: 
                      AssetImage("asset/hotel1.jpg"),
                      fit: BoxFit.cover
                      )
                    ),
                  ),
                   Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 150, width: 150, 
                    decoration: BoxDecoration(
                      image: DecorationImage(image: 
                      AssetImage("asset/hotel1.jpg"),
                      fit: BoxFit.cover
                      )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 150, width: 150, 
                    decoration: BoxDecoration(
                      image: DecorationImage(image: 
                      AssetImage("asset/hotel1.jpg"),
                      fit: BoxFit.cover
                      )
                    ),
                  ),
                ],
              ),
            ),


           
          ],
        ),
      ),
      
    );
  }
}