import 'package:durgabeej/Shop/product.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Fungicides extends StatefulWidget {
  const Fungicides({ Key? key }) : super(key: key);

  @override
  _FungicidesState createState() => _FungicidesState();
}

class _FungicidesState extends State<Fungicides> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        centerTitle: true,
        elevation: 1.0,
        title: const SizedBox(
          height: 25.0, child: Text("Fungicide")),
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
                  shrinkWrap: true,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(4),
                      color: Colors.green.shade800,
                      margin: const EdgeInsets.only(left: 8,top: 8,right: 8),
                      child: const Text("Fungicides",style: TextStyle(fontSize: 24,color: Colors.white), textAlign: TextAlign.center)
                    ),
                    Container(
                      color: Colors.green.shade100,
                      margin: const EdgeInsets.only(left: 8,right: 8),
                      height: 1000,
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



    );
  }
}