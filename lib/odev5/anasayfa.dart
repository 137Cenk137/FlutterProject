import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  String veri = "";
  int sonuc = 1;
  var toplamList = <String>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.black26,

      ),
      backgroundColor: Colors.black12,
      body: Center(
        child: Column(
            children: [
              SizedBox(height: 68,
                  child: Align( alignment: Alignment.bottomRight,
                      child: Text("$veri",style: TextStyle( fontSize: 45),))),
              Row(
                

                children: [
                  SizedBox(width:75,height:75,child: ElevatedButton(onPressed: (){
                    setState(() {
                      toplamList.clear();
                      veri = "0";
                    });
                  }, child: Text("C",style: TextStyle(color: Colors.white,fontSize: 30),),style: TextButton.styleFrom(backgroundColor: Colors.black38, shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0)))),)),
                  SizedBox(width:75,height:75,child: ElevatedButton(onPressed: (){}, child: Text("+/-",style: TextStyle(color: Colors.white,fontSize: 21)),style: TextButton.styleFrom(backgroundColor: Colors.black38,shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0)))),)),
                  SizedBox(width:75,height:75,child: ElevatedButton(onPressed: (){}, child: Text("%",style: TextStyle(color: Colors.white,fontSize: 30)),style: TextButton.styleFrom(backgroundColor: Colors.black38,shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0)))),)),
                  SizedBox(width:75,height:75,child: ElevatedButton(onPressed: (){}, child: Text("÷",style: TextStyle(color: Colors.white,fontSize: 30)),style: TextButton.styleFrom(backgroundColor: Colors.orangeAccent,shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0)))),)),
                ],
              ),
              Row(


                children: [
                  SizedBox(width:75,height:75,child: ElevatedButton(onPressed: (){
                    setState(() {
                      toplamList.add("7");
                      veri+="7";
                    });
                  }, child: Text("7",style: TextStyle(color: Colors.white,fontSize: 30),),style: TextButton.styleFrom(backgroundColor: Colors.black38, shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0)))),)),
                  SizedBox(width:75,height:75,child: ElevatedButton(onPressed: (){
                    setState(() {
                      toplamList.add("8");
                      veri+="8";
                    });
                  }, child: Text("8",style: TextStyle(color: Colors.white,fontSize: 30)),style: TextButton.styleFrom(backgroundColor: Colors.black38,shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0)))),)),
                  SizedBox(width:75,height:75,child: ElevatedButton(onPressed: (){
                    setState(() {
                      toplamList.add("9");
                      veri+="9";
                    });
                  }, child: Text("9",style: TextStyle(color: Colors.white,fontSize: 30)),style: TextButton.styleFrom(backgroundColor: Colors.black38,shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0)))),)),
                  SizedBox(width:75,height:75,child: ElevatedButton(onPressed: (){
                    setState(() {
                      toplamList.add("X");
                      veri+="X";
                    });
                  }, child: Text("X",style: TextStyle(color: Colors.white,fontSize: 30)),style: TextButton.styleFrom(backgroundColor: Colors.orangeAccent,shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0)))),)),
                ],
              ),
              Row(


                children: [
                  SizedBox(width:75,height:75,child: ElevatedButton(onPressed: (){
                    setState(() {
                      toplamList.add("4");
                      veri+="4";
                    });
                  }, child: Text("4",style: TextStyle(color: Colors.white,fontSize: 30),),style: TextButton.styleFrom(backgroundColor: Colors.black38, shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0)))),)),
                  SizedBox(width:75,height:75,child: ElevatedButton(onPressed: (){
                    setState(() {
                      toplamList.add("5");
                      veri+="5";
                    });
                  }, child: Text("5",style: TextStyle(color: Colors.white,fontSize: 30)),style: TextButton.styleFrom(backgroundColor: Colors.black38,shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0)))),)),
                  SizedBox(width:75,height:75,child: ElevatedButton(onPressed: (){
                    setState(() {
                      toplamList.add("6");
                      veri+="6";
                    });
                  }, child: Text("6",style: TextStyle(color: Colors.white,fontSize: 30)),style: TextButton.styleFrom(backgroundColor: Colors.black38,shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0)))),)),
                  SizedBox(width:75,height:75,child: ElevatedButton(onPressed: (){
                    setState(() {
                      toplamList.add("-");
                      veri+="-";
                    });
                  }, child: Text("-",style: TextStyle(color: Colors.white,fontSize: 60)),style: TextButton.styleFrom(backgroundColor: Colors.orangeAccent,shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0)))),)),
                ],
              ),
              Row(


                children: [
                  SizedBox(width:75,height:75,child: ElevatedButton(onPressed: (){
                    setState(() {
                      toplamList.add("1");
                      veri+="1";
                    });
                  }, child: Text("1",style: TextStyle(color: Colors.white,fontSize: 30),),style: TextButton.styleFrom(backgroundColor: Colors.black38, shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0)))),)),
                  SizedBox(width:75,height:75,child: ElevatedButton(onPressed: (){
                    setState(() {
                      toplamList.add("2");
                      veri+="2";
                    });
                  }, child: Text("2",style: TextStyle(color: Colors.white,fontSize: 30)),style: TextButton.styleFrom(backgroundColor: Colors.black38,shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0)))),)),
                  SizedBox(width:75,height:75,child: ElevatedButton(onPressed: (){
                    setState(() {
                      toplamList.add("3");
                      veri+="3";
                    });
                  }, child: Text("3",style: TextStyle(color: Colors.white,fontSize: 30)),style: TextButton.styleFrom(backgroundColor: Colors.black38,shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0)))),)),
                  SizedBox(width:75,height:75,child: ElevatedButton(onPressed: (){
                    setState(() {
                      toplamList.add("+");
                      veri+="+";
                    });
                  }, child: Text("+",style: TextStyle(color: Colors.white,fontSize: 30)),style: TextButton.styleFrom(backgroundColor: Colors.orangeAccent,shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0)))),)),
                ],
              ),
              Row(


                children: [
                  SizedBox(width:150,height:75,child: ElevatedButton(onPressed: (){}, child: Text("0",style: TextStyle(color: Colors.white,fontSize: 30),),style: TextButton.styleFrom(backgroundColor: Colors.black38, shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0)))),)),

                  SizedBox(width:75,height:75,child: ElevatedButton(onPressed: (){}, child: Text(",",style: TextStyle(color: Colors.white,fontSize: 30)),style: TextButton.styleFrom(backgroundColor: Colors.black38,shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0)))),)),
                  SizedBox(width:75,height:75,child: ElevatedButton(onPressed: (){

                  }, child: Text("=",style: TextStyle(color: Colors.white,fontSize: 30)),style: TextButton.styleFrom(backgroundColor: Colors.orangeAccent,shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0)))),)),
                ],
              ),
            ],
        ),
      ),
    );
  }
}


