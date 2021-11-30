import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:durgabeej/Components/search.dart';
import 'package:durgabeej/Shop/product.dart';
import 'package:durgabeej/Components/footer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tools extends StatefulWidget {
  const Tools({ Key? key }) : super(key: key);

  @override
  _ToolsState createState() => _ToolsState();
}

class _ToolsState extends State<Tools> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        centerTitle: true,
        elevation: 1.0,
        title: const SizedBox(
          height: 25.0, child: Text("Tools")),
          actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => SearchPage())),
              icon: const Icon(Icons.search))
          )
        ],
        ),

        body: Container(color: 
        Colors.green.shade100,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  CarouselSlider(
                    items: [
                      //1st Image of Slider
                      Container(
                        margin: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: NetworkImage(
                                "https://media-exp1.licdn.com/dms/image/C4D1BAQFBzxjZaiHw2w/company-background_10000/0/1603271002309?e=2159024400&v=beta&t=ZuiVgmWuDHysBqO4aRQZLy0Yo6qM9MpFUujYY6LjjT0"),
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
                            image: NetworkImage(
                                "https://i.pinimg.com/originals/9b/51/81/9b5181b7f07dbef212d372ab9e2d9eff.jpg"),
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
                            image: NetworkImage(
                                "https://www.nepalyp.com/img/np/l/1562919899-57-durga-beej-bhandar.jpg"),
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
                            image: NetworkImage(
                                "https://pbs.twimg.com/media/Eky4PDvVcAA5uuk?format=jpg&name=large"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],

                    //Slider Container properties
                    options: CarouselOptions(
                      height: 180.0,
                      // enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                    ),
                  ),
                ],
              ),
            ),
            
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const SizedBox(height: 10)
                ],
              ),
            ),

            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:2,
                crossAxisSpacing: 10.0,
              ),
              delegate: SliverChildListDelegate(
                [
                  InkWell(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 125,
                            width: 125,
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
                            width: 125,
                            color: Colors.white,
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const <Widget>[
                                    Text(
                                      "Sumo-505",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Price 500",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
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
                            height: 125,
                            width: 125,
                            color: Colors.teal[300],
                            padding: const EdgeInsets.all(8),
                            child: Flexible(
                              fit: FlexFit.loose,
                              child: Image.network(
                                "https://i.pinimg.com/originals/de/e9/8b/dee98b8f19a8a2bdd7aaf51207bae5be.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 125,
                            color: Colors.white,
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const <Widget>[
                                    Text(
                                      "Panda",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Price 500 ",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
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
                            height: 125,
                            width: 125,
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
                            width: 125,
                            color: Colors.white,
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const <Widget>[
                                    Text(
                                      "Crystal",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      "Price 500 ",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
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
                            height: 125,
                            width: 125,
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
                            height: 50,
                            width: 125,
                            color: Colors.white,
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const <Widget>[
                                    Text(
                                      "Trikaal-505",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Price 500 ",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
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
                            height: 125,
                            width: 125,
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
                            height: 50,
                            width: 125,
                            color: Colors.white,
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const <Widget>[
                                    Text(
                                      "Trikaal-505",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Price 500 ",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
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
                            height: 125,
                            width: 125,
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
                            height: 50,
                            width: 125,
                            color: Colors.white,
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const <Widget>[
                                    Text(
                                      "Trikaal-505",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Price 500 ",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
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
                            height: 125,
                            width: 125,
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
                            width: 125,
                            color: Colors.white,
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const <Widget>[
                                    Text(
                                      "Sumo-505",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Price 500",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
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
                            height: 125,
                            width: 125,
                            color: Colors.teal[300],
                            padding: const EdgeInsets.all(8),
                            child: Flexible(
                              fit: FlexFit.loose,
                              child: Image.network(
                                "https://i.pinimg.com/originals/de/e9/8b/dee98b8f19a8a2bdd7aaf51207bae5be.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 125,
                            color: Colors.white,
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const <Widget>[
                                    Text(
                                      "Panda",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Price 500 ",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
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
                            height: 125,
                            width: 125,
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
                            width: 125,
                            color: Colors.white,
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const <Widget>[
                                    Text(
                                      "Crystal",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      "Price 500 ",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
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
                            height: 125,
                            width: 125,
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
                            height: 50,
                            width: 125,
                            color: Colors.white,
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const <Widget>[
                                    Text(
                                      "Trikaal-505",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Price 500 ",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
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
                            height: 125,
                            width: 125,
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
                            height: 50,
                            width: 125,
                            color: Colors.white,
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const <Widget>[
                                    Text(
                                      "Trikaal-505",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Price 500 ",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
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
                            height: 125,
                            width: 125,
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
                            height: 50,
                            width: 125,
                            color: Colors.white,
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const <Widget>[
                                    Text(
                                      "Trikaal-505",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Price 500 ",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
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
      ),

      // Footer
      bottomNavigationBar: const Footer()
    );
  }
}