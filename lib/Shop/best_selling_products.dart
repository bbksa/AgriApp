import 'package:durgabeej/Shop/product.dart';
import 'package:durgabeej/Shop/shop.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellingProducts extends StatefulWidget {
  const BestSellingProducts({Key? key}) : super(key: key);

  @override
  _BestSellingProductsState createState() => _BestSellingProductsState();
}

class _BestSellingProductsState extends State<BestSellingProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8, top: 8, right: 8),
      height: MediaQuery.of(context).size.height / 1.6,
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 1.7,
            color: const Color(0xffb6e4d2),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 7,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.topCenter,
            child: Image.network(
              'https://rukminim1.flixcart.com/flap/800/178/image/eeb594865936b505.jpg?q=90',
            ),
          ),
          Positioned(
            top: 15,
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width-10,
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Text(
                            'Best Selling Products',
                            style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xff2874F0)),
                          child:  Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                textStyle: const TextStyle(fontSize: 20),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const Shop();
                                    },
                                  ),
                                );
                              },
                              child: const Text('View All', style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 4, right: 15, top: 8),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.75,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.white,
                    child: GridView.count(
                      childAspectRatio: (125 / 220),
                      primary: false,
                      padding: const EdgeInsets.all(10),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 3,
                      children: <Widget>[
                        InkWell(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 25,
                                width: MediaQuery.of(context).size.width / 3,
                                color: Colors.white,
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const <Widget>[
                                    Center(
                                      child: Text(
                                        "Insecticide",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height / 8,
                                width: MediaQuery.of(context).size.width / 3,
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
                                height: 50,
                                width: MediaQuery.of(context).size.width / 3,
                                color: Colors.white,
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const <Widget>[
                                        Text(
                                          "Sumo-505",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Price 500",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
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
                            Navigator.push(
                              context,
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
                                height: 25,
                                width: MediaQuery.of(context).size.width / 3,
                                color: Colors.white,
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const <Widget>[
                                    Center(
                                      child: Text(
                                        "Herbicide",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height / 8,
                                width: MediaQuery.of(context).size.width / 3,
                                color: Colors.teal[300],
                                padding: const EdgeInsets.all(8),
                                child: Flexible(
                                  fit: FlexFit.loose,
                                  child: Image.network(
                                    "https://i.pinimg.com/originals/de/e9/8b/dee98b8f19a8a2bdd7aaf51207bae5be.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width / 3,
                                color: Colors.white,
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const <Widget>[
                                        Text(
                                          "Panda",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Price 500 ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
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
                                height: 25,
                                width: MediaQuery.of(context).size.width / 3,
                                color: Colors.white,
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const <Widget>[
                                    Center(
                                      child: Text(
                                        "PGR",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height / 8,
                                width: MediaQuery.of(context).size.width / 3,
                                color: Colors.teal[300],
                                padding: const EdgeInsets.all(8),
                                child: Flexible(
                                  fit: FlexFit.loose,
                                  child: Image.network(
                                    "https://i.pinimg.com/564x/20/bb/81/20bb81e815ade3ab60cb0a20623ea856.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width / 3,
                                color: Colors.white,
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const <Widget>[
                                        Text(
                                          "Crystal",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.left,
                                        ),
                                        Text(
                                          "Price 500 ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.left,
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
                                height: 25,
                                width: MediaQuery.of(context).size.width / 3,
                                color: Colors.white,
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const <Widget>[
                                    Center(
                                      child: Text(
                                        "Insecticide",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height / 8,
                                width: MediaQuery.of(context).size.width / 3,
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
                                height: 50,
                                width: MediaQuery.of(context).size.width / 3,
                                color: Colors.white,
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const <Widget>[
                                        Text(
                                          "Trikaal-505",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Price 500 ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
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
                                height: 25,
                                width: MediaQuery.of(context).size.width / 3,
                                color: Colors.white,
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const <Widget>[
                                    Center(
                                      child: Text(
                                        "Tnsecticide",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height / 8,
                                width: MediaQuery.of(context).size.width / 3,
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
                                height: 50,
                                width: MediaQuery.of(context).size.width / 3,
                                color: Colors.white,
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const <Widget>[
                                        Text(
                                          "Trikaal-505",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Price 500 ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
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
                                height: 25,
                                width: MediaQuery.of(context).size.width / 3,
                                color: Colors.white,
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const <Widget>[
                                    Center(
                                      child: Text(
                                        "Tnsecticide",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height / 8,
                                width: MediaQuery.of(context).size.width / 3,
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
                                height: 50,
                                width: MediaQuery.of(context).size.width / 3,
                                color: Colors.white,
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const <Widget>[
                                        Text(
                                          "Trikaal-505",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Price 500 ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
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
                                height: 25,
                                width: MediaQuery.of(context).size.width / 3,
                                color: Colors.white,
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const <Widget>[
                                    Center(
                                      child: Text(
                                        "Tnsecticide",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height / 8,
                                width: MediaQuery.of(context).size.width / 3,
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
                                height: 50,
                                width: MediaQuery.of(context).size.width / 3,
                                color: Colors.white,
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const <Widget>[
                                        Text(
                                          "Trikaal-505",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Price 500 ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
