import 'package:durgabeej/Home/home.dart';
import 'package:durgabeej/Learn/learn.dart';
import 'package:durgabeej/Shop/cart.dart';
import 'package:flutter/material.dart';

import '../Shop/shop.dart';

class Footer extends StatelessWidget {
  const Footer ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 50.0,
      alignment: Alignment.center,
      child: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[              
            InkWell(
              child: Column(
                children: const <Widget>[
                  Icon(Icons.home),
                  Text("Home"),
                ],
              ),
              onTap: () {
                Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (context) {
                      return const Home();
                    },
                  ),
                );
              },
            ),
            InkWell(
              child: Column(
                children: const <Widget>[
                  Icon(Icons.school),
                  Text("Learn"),
                ],
              ),
              onTap: () {
                Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (context) {
                      return const Learn();
                    },
                  ),
                );
              },
            ),
            InkWell(
              child: Column(
                children: const <Widget>[
                  Icon(Icons.add_business, color: Colors.green),
                  Text("Shop"),
                ],
              ),
              onTap: () {
                Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (context) {
                      return const Shop();
                    },
                  ),
                );
              },
            ),
            InkWell(
              child: Column(
                children: const <Widget>[
                  Icon(Icons.shopping_cart),
                  Text("Cart"),
                ],
              ),
              onTap: () {
                Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (context) {
                      return const Cart();
                    },
                  ),
                );
              },
            ),
            InkWell(
              child: Column(
                children: const <Widget>[
                  Icon(Icons.account_circle_sharp),
                  Text("Account"),
                ],
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}