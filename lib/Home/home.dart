import 'package:durgabeej/Home/home_body.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        centerTitle: true,
        elevation: 1.0,
        leading: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          height: 40.0,
          width: 40.0,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage("https://www.nepalyp.com/img/np/k/1597042974-71-durga-beej-bhandar.jpg")
            ),
          ),
        ),
        title: const SizedBox(
          height: 35.0, child: Text("Durga Beej Bhandar")),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(Icons.notifications),
          )
        ],
      ),
      // Body
      body: const HomeBody(),
      // Footer
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 65.0,
        alignment: Alignment.center,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(
                      Icons.home,
                    ),
                    onPressed: () {},
                  ),
                  const Text("Home"),
                ],
              ),
              Column(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(
                      Icons.school,
                    ),
                    onPressed: () {},
                  ),
                  const Text("Education"),
                ],
              ),
              Column(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(
                      Icons.shop_2,
                    ),
                    onPressed: () {},
                  ),
                  const Text("Shop"),
                ],
              ),
              Column(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                    ),
                    onPressed: () {},
                  ),
                  const Text("Cart"),
                ],
              ),
              Column(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(
                      Icons.account_circle_sharp
                    ),
                    onPressed: () {},
                  ),
                  const Text("Account"),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
