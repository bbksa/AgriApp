import 'package:carousel_slider/carousel_slider.dart';
import 'package:durgabeej/Shop/Category/fungicides.dart';
import 'package:durgabeej/Shop/Category/insecticide.dart';
import 'package:durgabeej/Shop/product.dart';
import 'package:durgabeej/footer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          height: 25.0, 
          child: Text("Shop")
        ),
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
                      padding: const EdgeInsets.all(8),
                      height: 160,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          InkWell(
                            child: Container(
                              margin: const EdgeInsets.only(right: 8),
                              width: 115,
                              height: 120,
                              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                              color: Colors.green.shade100,
                              child: Column(
                                children: <Widget>[
                                  const Text("Insecticide", style: TextStyle(fontSize: 18,color: Colors.black, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                                  const SizedBox(height: 10),
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: NetworkImage('https://www.openaccessgovernment.org/wp-content/uploads/2021/03/stale.jpg'),
                                        fit: BoxFit.cover
                                      ),
                                    ),
                                  ),
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
                          InkWell(
                            child: Container(
                              margin: const EdgeInsets.only(right: 8),
                              width: 115,
                              height: 120,
                              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                              color: Colors.green.shade100,
                              child: Column(
                                children: <Widget>[
                                  const Text("Fungicide", style: TextStyle(fontSize: 18,color: Colors.black, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                                  const SizedBox(height: 10),
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: NetworkImage('https://5.imimg.com/data5/SELLER/Default/2020/12/WZ/UD/ZX/54087093/fungicide-500x500.jpg'),
                                        fit: BoxFit.cover
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(context, 
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const Fungicides();
                                  },
                                ),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              margin: const EdgeInsets.only(right: 8),
                              width: 115,
                              height: 120,
                              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                              color: Colors.green.shade100,
                              child: Column(
                                children: <Widget>[
                                  const Text("Herbicide", style: TextStyle(fontSize: 18,color: Colors.black, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                                  const SizedBox(height: 10),
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: NetworkImage('https://www.ces.ncsu.edu/wp-content/uploads/2015/09/weedkiller.jpg'),
                                        fit: BoxFit.cover
                                      ),
                                    ),
                                  ),
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
                          InkWell(
                            child: Container(
                              margin: const EdgeInsets.only(right: 8),
                              width: 115,
                              height: 120,
                              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                              color: Colors.green.shade100,
                              child: Column(
                                children: <Widget>[
                                  const Text("PGR", style: TextStyle(fontSize: 18,color: Colors.black, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                                  const SizedBox(height: 10),
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: NetworkImage('https://cff2.earth.com/uploads/2021/03/16173225/shutterstock_17212516244-scaled.jpg'),
                                        fit: BoxFit.cover
                                      ),
                                    ),
                                  ),
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
                          InkWell(
                            child: Container(
                              margin: const EdgeInsets.only(right: 8),
                              width: 115,
                              height: 120,
                              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                              color: Colors.green.shade100,
                              child: Column(
                                children: <Widget>[
                                  const Text("Seeds", style: TextStyle(fontSize: 18,color: Colors.black, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                                  const SizedBox(height: 10),
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: NetworkImage('https://images.theconversation.com/files/307156/original/file-20191216-124022-r2addy.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=900.0&fit=crop'),
                                        fit: BoxFit.cover
                                      ),
                                    ),
                                  ),
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
                          InkWell(
                            child: Container(
                              margin: const EdgeInsets.only(right: 8),
                              width: 115,
                              height: 120,
                              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                              color: Colors.green.shade100,
                              child: Column(
                                children: <Widget>[
                                  const Text("Sprayers", style: TextStyle(fontSize: 18,color: Colors.black, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                                  const SizedBox(height: 10),
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: NetworkImage('https://media.istockphoto.com/vectors/man-in-hazmat-protective-suit-gas-mask-and-gas-cylinder-for-vector-id1215633147?k=20&m=1215633147&s=612x612&w=0&h=msDWp_ikadD-TwRS5MwE-8_HDezkMFozGLjJ1KcwZ6A='),
                                        fit: BoxFit.cover
                                      ),
                                    ),
                                  ),
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
                          InkWell(
                            child: Container(
                              margin: const EdgeInsets.only(right: 0),
                              width: 115,
                              height: 120,
                              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                              color: Colors.green.shade100,
                              child: Column(
                                children: <Widget>[
                                  const Text("Tools", style: TextStyle(fontSize: 18,color: Colors.black, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                                  const SizedBox(height: 10),
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: NetworkImage('https://homesteading.com/wp-content/uploads/2021/03/Gardening-tools-and-utensils-on-a-lush-green-meadow-Farming-tools-Featured-SS-1200x900.jpg'),
                                        fit: BoxFit.cover
                                      ),
                                    ),
                                  ),
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
                        childAspectRatio: (200 / 270),
                        primary: false,
                        padding: const EdgeInsets.all(10),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 2,
                        children: <Widget>[
                          InkWell(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  color: Colors.white,
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const <Widget>[
                                      Center(
                                          child: Text(
                                            "Insecticide",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center,
                                          ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  color: Colors.teal[300],
                                  padding: const EdgeInsets.all(8),
                                  child: Flexible(
                                  fit: FlexFit.loose,
                                    child: Image.network(
                                      "https://lh3.googleusercontent.com/p/AF1QipNSco18zvjwr1xtAf1jJVCa8VvuHvijcywchOSP=w768-h768-n-o-v1",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const <Widget>[
                                          Text(
                                            "Trikaal-505",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "Price 500 ",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      const Icon(FontAwesomeIcons.shoppingCart)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {
                              Navigator.push(context, 
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const Product();
                                  },
                                ),
                              );
                            },
                          ),

                          InkWell(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  color: Colors.white,
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const <Widget>[
                                      Center(
                                          child: Text(
                                            "Tnsecticide",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center,
                                          ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  color: Colors.teal[300],
                                  padding: const EdgeInsets.all(8),
                                  child: Flexible(
                                  fit: FlexFit.loose,
                                    child: Image.network(
                                      "https://lh3.googleusercontent.com/p/AF1QipNSco18zvjwr1xtAf1jJVCa8VvuHvijcywchOSP=w768-h768-n-o-v1",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const <Widget>[
                                          Text(
                                            "Trikaal-505",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "Price 500 ",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      const Icon(FontAwesomeIcons.shoppingCart)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {},
                          ),
                          
                          InkWell(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  color: Colors.white,
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const <Widget>[
                                      Center(
                                          child: Text(
                                            "Tnsecticide",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center,
                                          ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  color: Colors.teal[300],
                                  padding: const EdgeInsets.all(8),
                                  child: Flexible(
                                  fit: FlexFit.loose,
                                    child: Image.network(
                                      "https://lh3.googleusercontent.com/p/AF1QipNSco18zvjwr1xtAf1jJVCa8VvuHvijcywchOSP=w768-h768-n-o-v1",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const <Widget>[
                                          Text(
                                            "Trikaal-505",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "Price 500 ",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      const Icon(FontAwesomeIcons.shoppingCart)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {},
                          ),

                          InkWell(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  color: Colors.white,
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const <Widget>[
                                      Center(
                                          child: Text(
                                            "Insecticide",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center,
                                          ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  color: Colors.teal[300],
                                  padding: const EdgeInsets.all(8),
                                  child: Flexible(
                                  fit: FlexFit.loose,
                                    child: Image.network(
                                      "https://lh3.googleusercontent.com/p/AF1QipNSco18zvjwr1xtAf1jJVCa8VvuHvijcywchOSP=w768-h768-n-o-v1",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const <Widget>[
                                          Text(
                                            "Trikaal-505",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "Price 500 ",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      const Icon(FontAwesomeIcons.shoppingCart)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {},
                          ),

                          InkWell(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  color: Colors.white,
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const <Widget>[
                                      Center(
                                          child: Text(
                                            "Tnsecticide",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center,
                                          ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  color: Colors.teal[300],
                                  padding: const EdgeInsets.all(8),
                                  child: Flexible(
                                  fit: FlexFit.loose,
                                    child: Image.network(
                                      "https://lh3.googleusercontent.com/p/AF1QipNSco18zvjwr1xtAf1jJVCa8VvuHvijcywchOSP=w768-h768-n-o-v1",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const <Widget>[
                                          Text(
                                            "Trikaal-505",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "Price 500 ",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      const Icon(FontAwesomeIcons.shoppingCart)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {},
                          ),
                          
                          InkWell(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  color: Colors.white,
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const <Widget>[
                                      Center(
                                          child: Text(
                                            "Tnsecticide",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center,
                                          ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  color: Colors.teal[300],
                                  padding: const EdgeInsets.all(8),
                                  child: Flexible(
                                  fit: FlexFit.loose,
                                    child: Image.network(
                                      "https://lh3.googleusercontent.com/p/AF1QipNSco18zvjwr1xtAf1jJVCa8VvuHvijcywchOSP=w768-h768-n-o-v1",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const <Widget>[
                                          Text(
                                            "Trikaal-505",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "Price 500 ",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      const Icon(FontAwesomeIcons.shoppingCart)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {},
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
