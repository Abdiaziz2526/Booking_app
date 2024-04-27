import 'package:flutter/material.dart';
import 'package:inyofa_app/interface.dart';

class formone extends StatelessWidget {
  const formone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,

        body: Container(
          height: 900, width: 500, 
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("asset/r.jpg"), fit: BoxFit.cover)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
             Container(
               child: Padding(
                 padding: const EdgeInsets.all(13),
                 child: Container(
                  height: 450, width: 500, 
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                  ),
                   child: Padding(
                     padding: const EdgeInsets.all(15),
                     child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Login", style: TextStyle(fontSize: 33,  fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email, color: Color(0xff224bfe),),
                            border: OutlineInputBorder(
                              borderSide: BorderSide( color: Color(0xff224bfe),),
                              borderRadius: BorderRadius.circular(10),
                               
                            ), 
                          ),
                        ),
                        SizedBox(height: 15,),
                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.key, color: Color(0xff224bfe),),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(height: 14,),
                        Container(
                          height: 55, width: 230,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff224bfe),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              )
                            ),

                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>interOne()));
                            }, child: Text("Login",
                          style: TextStyle(
                            fontSize: 24,
                           
                          ),)),
                          
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Do not have an account?", style: TextStyle(fontSize: 19),),
                            TextButton(onPressed: (){}, child: Text("Sing Up" ,style: TextStyle(fontSize: 19),))
                          ],
                        )
                      ],
                              
                     ),
                   ),
                 ),
               ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}