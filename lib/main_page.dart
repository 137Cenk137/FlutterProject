import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});


  @override
  State<MainPage> createState() => _MainPageState();


}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Job Details",
          style: TextStyle(fontSize: 22,fontFamily: "sixfour"),),) ,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("pictures/resim1.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("\$ 500",style: TextStyle(fontSize: 33,color: Colors.black),),
                Text("75",style: TextStyle(fontSize: 33,color: Colors.black),),
                Text(" Remote",style: TextStyle(fontSize: 33,color: Colors.black),)
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Salary",style: TextStyle(fontSize: 13,color: Colors.black),),
              Text("Apllicaitons",style: TextStyle(fontSize: 13,color: Colors.black),),
              Text("Job Type",style: TextStyle(fontSize: 13,color: Colors.black)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(onPressed: (){},

                    child:Text("About The role",style: TextStyle(color: Colors.white),),
                    style: TextButton.styleFrom(backgroundColor: Colors.green,
                    shape: const RoundedRectangleBorder( borderRadius: BorderRadius.all(Radius.circular(10)))),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("""Your role as a product desinger goes beyound aesticja .
you will be responsible for understanding user needs
,conducting market research and identifiying for opportunities for improvement """),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("""By analyzing user feedback and 
conducting usability studies"""),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(onPressed: (){},
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Experdise Specifications"),
                      )
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(onPressed: (){},
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Assignment of resbonsibilities"),
                      )
                  ),
                ),


              ],
            ),
          )
        ],
      ),

    );
  }
}
