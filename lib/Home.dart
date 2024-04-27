import 'package:flutter/material.dart';
import 'package:inyofa_app/form/loging.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: 900,width: 500, 
          decoration: BoxDecoration(
            color: Colors.blue,
            image: DecorationImage(image: AssetImage("asset/r.jpg"), fit: BoxFit.cover)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 190),
                child: Text("Hi there!", style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100),
                child: Text("Where would you like to go?", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400),),
              ),
              SizedBox(height: 17,),
              Container(
                height: 55, width: 350,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff224bfe),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>formone()));
                  }, child: Text("Login", style: TextStyle(fontSize: 25),),
                ),
                ),
                SizedBox(height: 15,),
                Container(
                height: 55, width: 350,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff1a2b48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                  onPressed: (){}, child: Text("Sing Up", style: TextStyle(fontSize: 25),),
                ),
                ),
                SizedBox(height: 50,)
            ],
          ),
        ),
      ),
    );
  }
}