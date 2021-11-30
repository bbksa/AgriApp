import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Product extends StatefulWidget {
  const Product({ Key? key }) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        centerTitle: true,
        elevation: 1.0,
        title: const SizedBox(
          height: 25.0, child: Text("Product Details")),
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

        body: Column(
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
                                      "https://i.pinimg.com/736x/7d/78/79/7d78792c4e9093237eec2092971055be.jpg",
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
                                            "Sumo-505",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "Price 500",
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


    );
  }
}