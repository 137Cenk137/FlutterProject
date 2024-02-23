

import 'package:demo_projeler/odev6/ui/views/ad_page.dart';
import 'package:flutter/material.dart';
import 'package:demo_projeler/odev6/data/entity/product.dart';

class Anasayfa2 extends StatefulWidget {
  const Anasayfa2({super.key});

  @override
  State<Anasayfa2> createState() => _Anasayfa2State();
}

class _Anasayfa2State extends State<Anasayfa2> {
  var adresList = <String>[];

  String adres = "Ev Begonya SK. NO:24 Atasehir";
Future<List<Product>> productLoad() async{
  var productList = <Product>[];
    var u1 = Product(name: "Pizza", resim: "pictures/pizza_resim.png");
    productList.add(u1);
    productList.add(Product(name: "Pizza", resim: "pictures/pizza_resim.png"));
    productList.add(Product(name: "Pizza", resim: "pictures/pizza_resim.png"));
    productList.add(Product(name: "Pizza", resim: "pictures/pizza_resim.png"));
    productList.add(Product(name: "Pizza", resim: "pictures/pizza_resim.png"));
    productList.add(Product(name: "Pizza", resim: "pictures/pizza_resim.png"));
    productList.add(Product(name: "Pizza", resim: "pictures/pizza_resim.png"));
    productList.add(Product(name: "Pizza", resim: "pictures/pizza_resim.png"));
    productList.add(Product(name: "Pizza", resim: "pictures/pizza_resim.png"));
    productList.add(Product(name: "Pizza", resim: "pictures/pizza_resim.png"));
    productList.add(Product(name: "Pizza", resim: "pictures/pizza_resim.png"));
  productList.add(Product(name: "Pizza", resim: "pictures/pizza_resim.png"));
  productList.add(Product(name: "Pizza", resim: "pictures/pizza_resim.png"));
  productList.add(Product(name: "Pizza", resim: "pictures/pizza_resim.png"));
  productList.add(Product(name: "Pizza", resim: "pictures/pizza_resim.png"));
  productList.add(Product(name: "Pizza", resim: "pictures/pizza_resim.png"));
  productList.add(Product(name: "Pizza", resim: "pictures/pizza_resim.png"));
  productList.add(Product(name: "Pizza", resim: "pictures/pizza_resim.png"));
  productList.add(Product(name: "Pizza", resim: "pictures/pizza_resim.png"));
  productList.add(Product(name: "Pizza", resim: "pictures/pizza_resim.png"));
  productList.add(Product(name: "Pizza", resim: "pictures/pizza_resim.png"));


  return productList;

}


  @override
  void initState() {
    adresList.add("Ev Begonya SK. NO:24 Atasehir");
    adresList.add("Ev Begonya SK. NO:25 Atasehir");
    adresList.add("Ev Begonya SK. NO:26 Atasehir");
    adresList.add("Ev Begonya SK. NO:27 Atasehir");

    // TODO: implement initState
    super.initState();
  }
  int secilenIndex = 0;
  var sayfalar = [Center(),Center(),Center()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("getir",style: TextStyle(color: Colors.yellowAccent,fontSize: 30),),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.house_outlined),label: "bir"),
          const BottomNavigationBarItem(icon: Icon(Icons.house_outlined),label: "bir"),
          const BottomNavigationBarItem(icon: Icon(Icons.house_outlined),label: "bir")
        ],
        currentIndex: secilenIndex,
        selectedItemColor: Colors.cyan,
        unselectedItemColor: Colors.deepOrange,
        onTap: (index){
          setState(() {
            secilenIndex = index;
          });
        },
      ),
      body:Center(

          child: Column(

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Icon(Icons.home),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: DropdownButton(
                    value: adres,
                        icon: Icon(Icons.arrow_drop_down_sharp),
                        items: adresList.map((e) {
                          return DropdownMenuItem(value: e,child: Text(e));
                        }).toList(),
                        onChanged: (veri){
                      setState(() {
                        adres = veri!;
                      });

                    }),
                  )
                ],
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AdPage()));
                }
                  ,
                  child: Image.asset("pictures/getirfoto.png")),
              FutureBuilder<List<Product>>(
                  future: productLoad(),
                  builder: (context,snapshot){
                      if (snapshot.hasData){
                        var urunlist = snapshot.data;
                        return Expanded(

                          child: GridView.builder(
                            itemCount: urunlist!.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4, // Örneğin 2 yaparak iki sütunlu bir grid oluşturabilirsiniz
                              childAspectRatio: 0.5/0.5,
                              crossAxisSpacing: 10// 1 değerini kullanarak kare şeklindeki resimleri sağlayabilirsiniz
                            ),
                            itemBuilder: (context, index) {
                              var urun = urunlist[index];
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => AdPage()));
                                },
                                child: SizedBox(
                                  child: Card(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                            width: 75,
                                            height:75,
                                            child: Image.asset("${urun.resim}")),
                                        Spacer(),
                                        Text(urun.name),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        );

                      }
                      else{
                        print("bos");
                        return Center();

                      }
                  }),
            ],
          ),
        ),
      );


  }
}
