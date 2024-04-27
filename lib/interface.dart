import 'package:flutter/material.dart';
import 'package:inyofa_app/hotels/spaceOne.dart';
import 'package:inyofa_app/hotels/spacetwo.dart';

class interOne extends StatefulWidget {
  const interOne({super.key});

  @override
  State<interOne> createState() => _interOneState();
}

class _interOneState extends State<interOne> {
  final List<List<String>> products = [
    [
      "asset/rii.jpg"
    ],
     [
      "asset/r.jpg"
    ],
     [
      "asset/be.jpg"
    ]


  ];

  int CurrentIndex = 0;

  void _next(){
    setState(() {
      if(CurrentIndex < products.length -1){
        CurrentIndex++;
      }else{
        CurrentIndex = CurrentIndex;
      }
      
    });
    }
    void _preve(){
    setState(() {
      if(CurrentIndex >0){
        CurrentIndex--;
      }else{
        CurrentIndex = 0;
      }
      
    });
    
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                GestureDetector(
                  onHorizontalDragEnd: (DragEndDetails details){
                    if (details.velocity.pixelsPerSecond.dx > 0) {
                      _preve();
                      
                  }else if(details.velocity.pixelsPerSecond.dx < 0) {
                    _next(); 
                  }
                  },
                  child: Container(
                    height: 250, width: 430,
                    decoration: BoxDecoration(
                     color: Colors.blue,
                     image: DecorationImage(image: AssetImage(products[CurrentIndex][0]), fit: BoxFit.cover)
                    ),
                    // child: Container(
                    //   decoration: BoxDecoration(
                    //     gradient: LinearGradient(colors: [
                    //       Colors.grey.withOpacity(.9),
                    //       Colors.blue.withOpacity(.2),
                    //     ])
                    //   ),
                    // ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Row(
                    children: [
                      Container(
                        height: 55, width: 121,
                        child: ElevatedButton.icon(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff224bfe),
                          ),
                           icon: Icon(Icons.apartment, size: 30,),
                            label: Text("Hotel",
                            style: TextStyle(fontSize: 20),
                
                            )),
                      ),
                      SizedBox(width: 5,),
                       Container(
                        height: 55, width: 122,
                        child: ElevatedButton.icon(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff224bfe),
                          ),
                           icon: Icon(Icons.location_city, size: 30,),
                            label: Text("Space",
                            style: TextStyle(fontSize: 20),
                
                            )),
                      ),
                      SizedBox(width: 5,),
                       Container(
                        height: 55, width: 120,
                        child: ElevatedButton.icon(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff1a2b48),
                          ),
                           icon: Icon(Icons.flight, size: 30,),
                            label: Text("Flight",
                            style: TextStyle(fontSize: 20),
                
                            )),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 12,),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 155),
                      child: Text("Bestseller Listing", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 1,),
                    Padding(
                      padding: const EdgeInsets.only(right: 55),
                      child: Text("Hotel highly rated for thoughtful design", style: TextStyle(fontSize: 17),),
                    ),
                  ],
                ),
                SizedBox(height:  10,),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SpaceOne()));
                        }, child: 
                        Container(
                          height: 315, width: 250,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 0.1, blurRadius: 0.2
                              )
                            ]
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 175, width: 250,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("asset/space1.jpg"), fit: BoxFit.cover)
                                ), 
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Icon(Icons.star, color: Colors.amber,),
                                    Icon(Icons.star, color: Colors.amber,),
                                    Icon(Icons.star, color: Colors.amber,),
                                    Icon(Icons.star, color: Colors.amber,),
                                    Icon(Icons.star, color: Colors.amber,),
                                  ],
                                ),
                                
                              ),
                              SizedBox(height: 8,),
                             Column(
                              children: [
                                 Padding(
                                   padding: const EdgeInsets.only(right: 95),
                                   child: Text("Hotel Stanford", 
                                   style: TextStyle(fontSize: 21,
                                    color: Colors.black),),
                                 ),
                                  SizedBox(height: 5,),
                                 Padding(
                                   padding: const EdgeInsets.only(right: 195),
                                   child: Text("Paris", 
                                   style: TextStyle(fontSize: 17,
                                    color: Colors.grey[700], fontWeight: FontWeight.w400),),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Row(
                                    children: [
                                      
                                   Text("4.3/5 Very Good", style: TextStyle(
                                    fontSize: 17, color: Color(0xff224bfe),
                                   ),),
                                   SizedBox(width: 30,),
                                   Text("3 Reviews", style: TextStyle(
                                    fontSize: 17, color: Colors.grey
                                   ),)
                                    ],
                                   ),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Row(
                                    children: [
                                      
                                   Text("from", style: TextStyle(
                                    fontSize: 18, color: Colors.grey[600]
                                   ),),
                                   SizedBox(width: 0,),
                                   Text(" \$300", style: TextStyle(
                                    fontSize: 22, color: Colors.black, fontWeight: FontWeight.w600
                                   ),),
                                    SizedBox(width: 0,),
                                   Text("/night", style: TextStyle(
                                    fontSize: 18, color: Colors.grey[600]
                                   ),)
                                
                                    ],
                                   ),
                                 )
                              ],
                             )
                            ],
                          ),
                          
                        ),
                        
                        ),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Space2()));
                        }, child: 
                        Container(
                          height: 315, width: 250,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 0.1, blurRadius: 0.2
                              )
                            ]
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 175, width: 250,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("asset/be.jpg"), fit: BoxFit.cover)
                                ), 
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Icon(Icons.star, color: Colors.amber,),
                                    Icon(Icons.star, color: Colors.amber,),
                                    Icon(Icons.star, color: Colors.amber,),
                                    Icon(Icons.star, color: Colors.amber,),
                                    Icon(Icons.star, color: Colors.amber,),
                                  ],
                                ),
                                
                              ),
                              SizedBox(height: 8,),
                             Column(
                              children: [
                                 Padding(
                                   padding: const EdgeInsets.only(right: 30),
                                   child: Text("Hotel WBF Hommachi", 
                                   style: TextStyle(fontSize: 21,
                                    color: Colors.black),),
                                 ),
                                  SizedBox(height: 5,),
                                 Padding(
                                   padding: const EdgeInsets.only(right: 195),
                                   child: Text("Paris", 
                                   style: TextStyle(fontSize: 17,
                                    color: Colors.grey[700], fontWeight: FontWeight.w400),),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Row(
                                    children: [
                                      
                                   Text("4.8/5 Excellent", style: TextStyle(
                                    fontSize: 17, color: Color(0xff224bfe),
                                   ),),
                                   SizedBox(width: 30,),
                                   Text("5 Reviews", style: TextStyle(
                                    fontSize: 17, color: Colors.grey
                                   ),)
                                    ],
                                   ),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Row(
                                    children: [
                                      
                                   Text("from", style: TextStyle(
                                    fontSize: 18, color: Colors.grey[600]
                                   ),),
                                   SizedBox(width: 0,),
                                   Text(" \$350", style: TextStyle(
                                    fontSize: 22, color: Colors.black, fontWeight: FontWeight.w600
                                   ),),
                                    SizedBox(width: 0,),
                                   Text("/night", style: TextStyle(
                                    fontSize: 18, color: Colors.grey[600]
                                   ),)
                                
                                    ],
                                   ),
                                 )
                              ],
                             )
                            ],
                          ),
                          
                        ),
                        
                        ),
                        TextButton(onPressed: (){}, child: 
                      Container(
                        height: 315, width: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 0.1, blurRadius: 0.2
                            )
                          ]
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 175, width: 250,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("asset/be.jpg"), fit: BoxFit.cover)
                              ), 
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(Icons.star, color: Colors.amber,),
                                  Icon(Icons.star, color: Colors.amber,),
                                  Icon(Icons.star, color: Colors.amber,),
                                  Icon(Icons.star, color: Colors.amber,),
                                  Icon(Icons.star, color: Colors.amber,),
                                ],
                              ),
                              
                            ),
                            SizedBox(height: 8,),
                           Column(
                            children: [
                               Padding(
                                 padding: const EdgeInsets.only(right: 36),
                                 child: Text("Castello Casole Hotel", 
                                 style: TextStyle(fontSize: 21,
                                  color: Colors.black),),
                               ),
                                SizedBox(height: 5,),
                               Padding(
                                 padding: const EdgeInsets.only(right: 195),
                                 child: Text("Paris", 
                                 style: TextStyle(fontSize: 17,
                                  color: Colors.grey[700], fontWeight: FontWeight.w400),),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Row(
                                  children: [
                                    
                                 Text("4.3/5 Very Good", style: TextStyle(
                                  fontSize: 17, color: Color(0xff224bfe),
                                 ),),
                                 SizedBox(width: 30,),
                                 Text("4 Reviews", style: TextStyle(
                                  fontSize: 17, color: Colors.grey
                                 ),)
                                  ],
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Row(
                                  children: [
                                    
                                 Text("from", style: TextStyle(
                                  fontSize: 18, color: Colors.grey[600]
                                 ),),
                                 SizedBox(width: 0,),
                                 Text(" \$350", style: TextStyle(
                                  fontSize: 22, color: Colors.black, fontWeight: FontWeight.w600
                                 ),),
                                  SizedBox(width: 0,),
                                 Text("/night", style: TextStyle(
                                  fontSize: 18, color: Colors.grey[600]
                                 ),)
                
                                  ],
                                 ),
                               )
                            ],
                           )
                          ],
                        ),
                        
                      ),
                      
                      ),
                      TextButton(onPressed: (){}, child: 
                      Container(
                        height: 315, width: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 0.1, blurRadius: 0.2
                            )
                          ]
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 175, width: 250,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("asset/be.jpg"), fit: BoxFit.cover)
                              ), 
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(Icons.star, color: Colors.amber,),
                                  Icon(Icons.star, color: Colors.amber,),
                                  Icon(Icons.star, color: Colors.amber,),
                                  Icon(Icons.star, color: Colors.amber,),
                                  Icon(Icons.star, color: Colors.amber,),
                                ],
                              ),
                              
                            ),
                            SizedBox(height: 8,),
                           Column(
                            children: [
                               Padding(
                                 padding: const EdgeInsets.only(right: 35),
                                 child: Text("Redac Gateway Hotel", 
                                 style: TextStyle(fontSize: 21,
                                  color: Colors.black),),
                               ),
                                SizedBox(height: 5,),
                               Padding(
                                 padding: const EdgeInsets.only(right: 195),
                                 child: Text("Paris", 
                                 style: TextStyle(fontSize: 17,
                                  color: Colors.grey[700], fontWeight: FontWeight.w400),),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Row(
                                  children: [
                                    
                                 Text("4.3/5 Very Good", style: TextStyle(
                                  fontSize: 17, color: Color(0xff224bfe),
                                 ),),
                                 SizedBox(width: 30,),
                                 Text("3 Reviews", style: TextStyle(
                                  fontSize: 17, color: Colors.grey
                                 ),)
                                  ],
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Row(
                                  children: [
                                    
                                 Text("from", style: TextStyle(
                                  fontSize: 18, color: Colors.grey[600]
                                 ),),
                                 SizedBox(width: 0,),
                                 Text(" \$300", style: TextStyle(
                                  fontSize: 22, color: Colors.black, fontWeight: FontWeight.w600
                                 ),),
                                  SizedBox(width: 0,),
                                 Text("/night", style: TextStyle(
                                  fontSize: 18, color: Colors.grey[600]
                                 ),)
                
                                  ],
                                 ),
                               )
                            ],
                           )
                          ],
                        ),
                        
                      ),
                      
                      ),
                      
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12,),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 160),
                      child: Text("Top Destinations", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 1,),
                    Padding(
                      padding: const EdgeInsets.only(right: 35),
                      child: Text("It is a long established fact that a reader", style: TextStyle(fontSize: 17),),
                    ),
                  ],
                ),
               SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                 child: Padding(
                   padding: const EdgeInsets.all(9),
                   child: Row(
                    children: [
                      TextButton(onPressed:
                       (){}, child: Column(
                        children: [
                          Container(
                            height: 240, width: 240, 
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                              image: DecorationImage(image: AssetImage("asset/vg.jpg"), fit: BoxFit.cover,
                              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.color)
                              ),
                                   
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("VIRGINIA", style: TextStyle(color: Colors.white, fontSize: 25),)
                              ],
                            ),
                          )
                        ],
                       ),
                       ),
                       TextButton(onPressed:
                       (){}, child: Column(
                        children: [
                          Container(
                            height: 240, width: 240, 
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                              image: DecorationImage(image: AssetImage("asset/un.jpg"), fit: BoxFit.cover,
                              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.color)
                              ),
                                   
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("UNITED STATES", style: TextStyle(color: Colors.white, fontSize: 25),)
                              ],
                            ),
                          )
                        ],
                       ),
                       ),
                        TextButton(onPressed:
                       (){}, child: Column(
                        children: [
                          Container(
                            height: 240, width: 240, 
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                              image: DecorationImage(image: AssetImage("asset/h.jpg"), fit: BoxFit.cover,
                              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.color)
                              ),
                                   
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("SAN FRANCISCO", style: TextStyle(color: Colors.white, fontSize: 25),)
                              ],
                            ),
                          )
                        ],
                       ),
                       ),
                    ],
                   ),
                 ),
               ),
                SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                 child: Padding(
                   padding: const EdgeInsets.all(8),
                   child: Row(
                    children: [
                      TextButton(onPressed:
                       (){}, child: Column(
                        children: [
                          Container(
                            height: 240, width: 240, 
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                              image: DecorationImage(image: AssetImage("asset/pr.jpg"), fit: BoxFit.cover,
                              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.color)
                              ),
                                   
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("PARIS", style: TextStyle(color: Colors.white, fontSize: 25),)
                              ],
                            ),
                          )
                        ],
                       ),
                       ),
                       TextButton(onPressed:
                       (){}, child: Column(
                        children: [
                          Container(
                            height: 240, width: 240, 
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                              image: DecorationImage(image: AssetImage("asset/ny.jpg"), fit: BoxFit.cover,
                              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.color)
                              ),
                                   
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("NEW YORK", style: TextStyle(color: Colors.white, fontSize: 25),)
                              ],
                            ),
                          )
                        ],
                       ),
                       ),
                        TextButton(onPressed:
                       (){}, child: Column(
                        children: [
                          Container(
                            height: 240, width: 240, 
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                              image: DecorationImage(image: AssetImage("asset/prr.jpg"), fit: BoxFit.cover,
                              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.color)
                              ),
                                   
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("NEW JERSEY", style: TextStyle(color: Colors.white, fontSize: 25),)
                              ],
                            ),
                          )
                        ],
                       ),
                       ),
                    ],
                   ),
                 ),
               ),
               SizedBox(height: 12,),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 190),
                      child: Text("Rental Listing", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 1,),
                    Padding(
                      padding: const EdgeInsets.only(right: 35),
                      child: Text("Homes highly rated for thoughtful design", style: TextStyle(fontSize: 17),),
                    ),
                    
                  ],
                ),
                  SizedBox(height:  10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      
                      children: [
                        TextButton(onPressed: (){}, child: 
                        Container(
                          height: 315, width: 250,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 0.1, blurRadius: 0.2
                              )
                            ]
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 175, width: 250,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("asset/be.jpg"), fit: BoxFit.cover)
                                ), 
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Icon(Icons.star, color: Colors.amber,),
                                    Icon(Icons.star, color: Colors.amber,),
                                    Icon(Icons.star, color: Colors.amber,),
                                    Icon(Icons.star, color: Colors.amber,),
                                    Icon(Icons.star, color: Colors.amber,),
                                  ],
                                ),
                                
                              ),
                              SizedBox(height: 8,),
                             Column(
                              children: [
                                 Padding(
                                   padding: const EdgeInsets.only(right: 95),
                                   child: Text("Hotel Stanford", 
                                   style: TextStyle(fontSize: 21,
                                    color: Colors.black),),
                                 ),
                                  SizedBox(height: 5,),
                                 Padding(
                                   padding: const EdgeInsets.only(right: 195),
                                   child: Text("Paris", 
                                   style: TextStyle(fontSize: 17,
                                    color: Colors.grey[700], fontWeight: FontWeight.w400),),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Row(
                                    children: [
                                      
                                   Text("4.3/5 Very Good", style: TextStyle(
                                    fontSize: 17, color: Color(0xff224bfe),
                                   ),),
                                   SizedBox(width: 30,),
                                   Text("3 Reviews", style: TextStyle(
                                    fontSize: 17, color: Colors.grey
                                   ),)
                                    ],
                                   ),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Row(
                                    children: [
                                      
                                   Text("from", style: TextStyle(
                                    fontSize: 18, color: Colors.grey[600]
                                   ),),
                                   SizedBox(width: 0,),
                                   Text(" \$300", style: TextStyle(
                                    fontSize: 22, color: Colors.black, fontWeight: FontWeight.w600
                                   ),),
                                    SizedBox(width: 0,),
                                   Text("/night", style: TextStyle(
                                    fontSize: 18, color: Colors.grey[600]
                                   ),)
                                
                                    ],
                                   ),
                                 )
                              ],
                             )
                            ],
                          ),
                          
                        ),
                        
                        ),
                        TextButton(onPressed: (){}, child: 
                        Container(
                          height: 315, width: 250,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 0.1, blurRadius: 0.2
                              )
                            ]
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 175, width: 250,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("asset/be.jpg"), fit: BoxFit.cover)
                                ), 
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Icon(Icons.star, color: Colors.amber,),
                                    Icon(Icons.star, color: Colors.amber,),
                                    Icon(Icons.star, color: Colors.amber,),
                                    Icon(Icons.star, color: Colors.amber,),
                                    Icon(Icons.star, color: Colors.amber,),
                                  ],
                                ),
                                
                              ),
                              SizedBox(height: 8,),
                             Column(
                              children: [
                                 Padding(
                                   padding: const EdgeInsets.only(right: 95),
                                   child: Text("Hotel Stanford", 
                                   style: TextStyle(fontSize: 21,
                                    color: Colors.black),),
                                 ),
                                  SizedBox(height: 5,),
                                 Padding(
                                   padding: const EdgeInsets.only(right: 195),
                                   child: Text("Paris", 
                                   style: TextStyle(fontSize: 17,
                                    color: Colors.grey[700], fontWeight: FontWeight.w400),),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Row(
                                    children: [
                                      
                                   Text("4.3/5 Very Good", style: TextStyle(
                                    fontSize: 17, color: Color(0xff224bfe),
                                   ),),
                                   SizedBox(width: 30,),
                                   Text("3 Reviews", style: TextStyle(
                                    fontSize: 17, color: Colors.grey
                                   ),)
                                    ],
                                   ),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Row(
                                    children: [
                                      
                                   Text("from", style: TextStyle(
                                    fontSize: 18, color: Colors.grey[600]
                                   ),),
                                   SizedBox(width: 0,),
                                   Text(" \$300", style: TextStyle(
                                    fontSize: 22, color: Colors.black, fontWeight: FontWeight.w600
                                   ),),
                                    SizedBox(width: 0,),
                                   Text("/night", style: TextStyle(
                                    fontSize: 18, color: Colors.grey[600]
                                   ),)
                                
                                    ],
                                   ),
                                 )
                              ],
                             )
                            ],
                          ),
                          
                        ),
                        
                        ),
                        TextButton(onPressed: (){}, child: 
                      Container(
                        height: 315, width: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 0.1, blurRadius: 0.2
                            )
                          ]
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 175, width: 250,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("asset/be.jpg"), fit: BoxFit.cover)
                              ), 
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(Icons.star, color: Colors.amber,),
                                  Icon(Icons.star, color: Colors.amber,),
                                  Icon(Icons.star, color: Colors.amber,),
                                  Icon(Icons.star, color: Colors.amber,),
                                  Icon(Icons.star, color: Colors.amber,),
                                ],
                              ),
                              
                            ),
                            SizedBox(height: 8,),
                           Column(
                            children: [
                               Padding(
                                 padding: const EdgeInsets.only(right: 95),
                                 child: Text("Hotel Stanford", 
                                 style: TextStyle(fontSize: 21,
                                  color: Colors.black),),
                               ),
                                SizedBox(height: 5,),
                               Padding(
                                 padding: const EdgeInsets.only(right: 195),
                                 child: Text("Paris", 
                                 style: TextStyle(fontSize: 17,
                                  color: Colors.grey[700], fontWeight: FontWeight.w400),),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Row(
                                  children: [
                                    
                                 Text("4.3/5 Very Good", style: TextStyle(
                                  fontSize: 17, color: Color(0xff224bfe),
                                 ),),
                                 SizedBox(width: 30,),
                                 Text("3 Reviews", style: TextStyle(
                                  fontSize: 17, color: Colors.grey
                                 ),)
                                  ],
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Row(
                                  children: [
                                    
                                 Text("from", style: TextStyle(
                                  fontSize: 18, color: Colors.grey[600]
                                 ),),
                                 SizedBox(width: 0,),
                                 Text(" \$300", style: TextStyle(
                                  fontSize: 22, color: Colors.black, fontWeight: FontWeight.w600
                                 ),),
                                  SizedBox(width: 0,),
                                 Text("/night", style: TextStyle(
                                  fontSize: 18, color: Colors.grey[600]
                                 ),)
                
                                  ],
                                 ),
                               )
                            ],
                           )
                          ],
                        ),
                        
                      ),
                      
                      ),
                      TextButton(onPressed: (){}, child: 
                      Container(
                        height: 315, width: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 0.1, blurRadius: 0.2
                            )
                          ]
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 175, width: 250,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("asset/be.jpg"), fit: BoxFit.cover)
                              ), 
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(Icons.star, color: Colors.amber,),
                                  Icon(Icons.star, color: Colors.amber,),
                                  Icon(Icons.star, color: Colors.amber,),
                                  Icon(Icons.star, color: Colors.amber,),
                                  Icon(Icons.star, color: Colors.amber,),
                                ],
                              ),
                              
                            ),
                            SizedBox(height: 8,),
                           Column(
                            children: [
                               Padding(
                                 padding: const EdgeInsets.only(right: 95),
                                 child: Text("Hotel Stanford", 
                                 style: TextStyle(fontSize: 21,
                                  color: Colors.black),),
                               ),
                                SizedBox(height: 5,),
                               Padding(
                                 padding: const EdgeInsets.only(right: 195),
                                 child: Text("Paris", 
                                 style: TextStyle(fontSize: 17,
                                  color: Colors.grey[700], fontWeight: FontWeight.w400),),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Row(
                                  children: [
                                    
                                 Text("4.3/5 Very Good", style: TextStyle(
                                  fontSize: 17, color: Color(0xff224bfe),
                                 ),),
                                 SizedBox(width: 30,),
                                 Text("3 Reviews", style: TextStyle(
                                  fontSize: 17, color: Colors.grey
                                 ),)
                                  ],
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Row(
                                  children: [
                                    
                                 Text("from", style: TextStyle(
                                  fontSize: 18, color: Colors.grey[600]
                                 ),),
                                 SizedBox(width: 0,),
                                 Text(" \$300", style: TextStyle(
                                  fontSize: 22, color: Colors.black, fontWeight: FontWeight.w600
                                 ),),
                                  SizedBox(width: 0,),
                                 Text("/night", style: TextStyle(
                                  fontSize: 18, color: Colors.grey[600]
                                 ),)
                
                                  ],
                                 ),
                               )
                            ],
                           )
                          ],
                        ),
                        
                      ),
                      
                      ),
                      
                      ],
                    ),
                  ),
                ),
                //  SizedBox(height: 12,),
                // Column(
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.only(right: 220),
                //       child: Text("Rental Listing", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                //     ),
                //     SizedBox(height: 1,),
                //     Padding(
                //       padding: const EdgeInsets.only(right: 65),
                //       child: Text("Homes highly rated for thoughtful design", style: TextStyle(fontSize: 17),),
                //     ),
                    
                //   ],
                // ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}