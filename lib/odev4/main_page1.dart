import 'package:flutter/material.dart';
import 'package:demo_projeler/odev4/page_a.dart';
import 'package:demo_projeler/odev4/page_x.dart';
class MainPage1 extends StatefulWidget {
  const MainPage1({super.key});

  @override
  State<MainPage1> createState() => _MainPage1State();
}

class _MainPage1State extends State<MainPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Anasayfa",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      backgroundColor: Colors.lightBlueAccent,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PageA()));
            }, child: Text("Enter A Page")),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const PageX() ));
            }, child: Text("Enter X page"))
          ],
        ),
      ),
    );
  }
}
