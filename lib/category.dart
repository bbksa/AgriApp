import 'package:durgabeej/Shop/Category/fungicide.dart';
import 'package:durgabeej/Shop/Category/herbicide.dart';
import 'package:durgabeej/Shop/Category/insecticide.dart';
import 'package:durgabeej/Shop/Category/pgr.dart';
import 'package:durgabeej/Shop/Category/seeds.dart';
import 'package:durgabeej/Shop/Category/sprayers.dart';
import 'package:durgabeej/Shop/Category/tools.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ListView(
        shrinkWrap: true,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(4),
            color: Colors.green.shade900,
            margin: const EdgeInsets.only(left: 8, top: 8, right: 8),
            child: const Text("Product Category",
              style: TextStyle(fontSize: 24, color: Colors.white),
              textAlign: TextAlign.center
              )
            ),
          Container(
            color: Colors.green.shade300,
            margin: const EdgeInsets.only(left: 8, right: 8),
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
                        const Text("Insecticide",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                        const SizedBox(height: 10),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://www.openaccessgovernment.org/wp-content/uploads/2021/03/stale.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
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
                        const Text("Fungicide",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                        const SizedBox(height: 10),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://5.imimg.com/data5/SELLER/Default/2020/12/WZ/UD/ZX/54087093/fungicide-500x500.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Fungicide();
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
                        const Text("Herbicide",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                        const SizedBox(height: 10),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://www.ces.ncsu.edu/wp-content/uploads/2015/09/weedkiller.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Herbicide();
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
                        const Text("PGR",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                        const SizedBox(height: 10),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://cff2.earth.com/uploads/2021/03/16173225/shutterstock_17212516244-scaled.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const PGR();
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
                        const Text("Seeds",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                        const SizedBox(height: 10),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://images.theconversation.com/files/307156/original/file-20191216-124022-r2addy.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=900.0&fit=crop'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Seeds();
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
                        const Text("Sprayers",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                        const SizedBox(height: 10),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://media.istockphoto.com/vectors/man-in-hazmat-protective-suit-gas-mask-and-gas-cylinder-for-vector-id1215633147?k=20&m=1215633147&s=612x612&w=0&h=msDWp_ikadD-TwRS5MwE-8_HDezkMFozGLjJ1KcwZ6A='),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Sprayers();
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
                        const Text("Tools",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                        const SizedBox(height: 10),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://homesteading.com/wp-content/uploads/2021/03/Gardening-tools-and-utensils-on-a-lush-green-meadow-Farming-tools-Featured-SS-1200x900.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Tools();
                        },
                      ),
                    );
                  },
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}
