import 'package:carousel_slider/carousel_slider.dart';
import 'package:durgabeej/Shop/Category/insecticide.dart';
import 'package:durgabeej/footer.dart';
import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  ShopState createState() => ShopState();
}

class ShopState extends State<Shop> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        centerTitle: true,
        elevation: 1.0,
        title: const SizedBox(
          height: 25.0, child: Text("Shop")),
          actions: const <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: IconButton(
                      icon: Icon(
                        Icons.add_shopping_cart,
                        color: Color(0xFFFFFFFF),
                      ),
                      onPressed: null,
                    ),
          )
        ],
      ),

            body: ListView(
              children: <Widget>[
                // CarouselSlider
                CarouselSlider(
                  items: [
                    //1st Image of Slider
                    Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: NetworkImage("https://media-exp1.licdn.com/dms/image/C4D1BAQFBzxjZaiHw2w/company-background_10000/0/1603271002309?e=2159024400&v=beta&t=ZuiVgmWuDHysBqO4aRQZLy0Yo6qM9MpFUujYY6LjjT0"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    //2nd Image of Slider
                    Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: NetworkImage("https://i.pinimg.com/originals/9b/51/81/9b5181b7f07dbef212d372ab9e2d9eff.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    //3rd Image of Slider
                    Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: NetworkImage("https://www.nepalyp.com/img/np/l/1562919899-57-durga-beej-bhandar.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    //4th Image of Slider
                    Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: NetworkImage("https://pbs.twimg.com/media/Eky4PDvVcAA5uuk?format=jpg&name=large"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                  
                  //Slider Container properties
                  options: CarouselOptions(
                    height: 220.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: const Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                ),

                // Category
                ListView(
                  shrinkWrap: true,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(4),
                      color: Colors.green.shade900,
                      margin: const EdgeInsets.only(left: 8,top: 8,right: 8),
                      child: const Text("Category",style: TextStyle(fontSize: 24,color: Colors.white), textAlign: TextAlign.center)
                    ),
                    Container(
                      color: Colors.green.shade300,
                      margin: const EdgeInsets.only(left: 8,right: 8),
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5,20,5,20),
                            child: InkWell(
                              child: SizedBox(
                                // width: 100.0,
                                child: Column(
                                  children: const <Widget>[
                                    Icon(Icons.production_quantity_limits),
                                    SizedBox( height: 10),
                                    Text("Insecticide"),
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context, 
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const Insecticides();
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5,20,5,20),
                            child: InkWell(
                              child: SizedBox(
                                // width: 100.0,
                                child: Column(
                                  children: const <Widget>[
                                    Icon(Icons.production_quantity_limits),
                                    SizedBox( height: 10),
                                    Text("Fungicide"),
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context, 
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const Insecticides();
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5,20,5,20),
                            child: InkWell(
                              child: SizedBox(
                                // width: 100.0,
                                child: Column(
                                  children: const <Widget>[
                                    Icon(Icons.production_quantity_limits),
                                    SizedBox( height: 10),
                                    Text("Herbicide"),
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context, 
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const Insecticides();
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5,20,5,20),
                            child: InkWell(
                              child: SizedBox(
                                // width: 100.0,
                                child: Column(
                                  children: const <Widget>[
                                    Icon(Icons.production_quantity_limits),
                                    SizedBox( height: 10),
                                    Text("PGR"),
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context, 
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const Insecticides();
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5,20,5,20),
                            child: InkWell(
                              child: SizedBox(
                                // width: 100.0,
                                child: Column(
                                  children: const <Widget>[
                                    Icon(Icons.production_quantity_limits),
                                    SizedBox( height: 10),
                                    Text("Seeds"),
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context, 
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const Insecticides();
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5,20,5,20),
                            child: InkWell(
                              child: SizedBox(
                                // width: 100.0,
                                child: Column(
                                  children: const <Widget>[
                                    Icon(Icons.production_quantity_limits),
                                    SizedBox( height: 10),
                                    Text("Sprayers"),
                                  ],
                                ),
                              ),                              
                              onTap: () {
                                Navigator.push(context, 
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const Insecticides();
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5,20,5,20),
                            child: InkWell(
                              child: SizedBox(
                                // width: 100.0,
                                child: Column(
                                  children: const <Widget>[
                                    Icon(Icons.agriculture),
                                    SizedBox( height: 10),
                                    Text("Tools"),
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context, 
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const Insecticides();
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      )
                    ),
                  ]
                ),

                // Products Shopping
                ListView(
                  shrinkWrap: true,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(4),
                      color: Colors.green.shade800,
                      margin: const EdgeInsets.only(left: 8,top: 8,right: 8),
                      child: const Text("Best Selling Products",style: TextStyle(fontSize: 24,color: Colors.white), textAlign: TextAlign.center)
                    ),
                    Container(
                      color: Colors.green.shade100,
                      margin: const EdgeInsets.only(left: 8,right: 8),
                      height: 450,
                      child: GridView.count(
                        primary: false,
                        padding: const EdgeInsets.all(20),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 2,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: Flexible(
                              fit: FlexFit.loose,
                              child: Image.network(
                                "https://lh3.googleusercontent.com/p/AF1QipNSco18zvjwr1xtAf1jJVCa8VvuHvijcywchOSP=w768-h768-n-o-v1",
                                fit: BoxFit.cover,
                              ),
                            ),
                            color: Colors.teal[100],
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: Flexible(
                              fit: FlexFit.loose,
                              child: Image.network(
                                "https://lh3.googleusercontent.com/p/AF1QipNSco18zvjwr1xtAf1jJVCa8VvuHvijcywchOSP=w768-h768-n-o-v1",
                                fit: BoxFit.cover,
                              ),
                            ),
                            color: Colors.teal[200],
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: Flexible(
                              fit: FlexFit.loose,
                              child: Image.network(
                                "https://lh3.googleusercontent.com/p/AF1QipNSco18zvjwr1xtAf1jJVCa8VvuHvijcywchOSP=w768-h768-n-o-v1",
                                fit: BoxFit.cover,
                              ),
                            ),
                            color: Colors.teal[300],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),

      // Footer
      bottomNavigationBar: const Footer()
    );
  }
}
