import 'package:durgabeej/footer.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({ Key? key }) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        centerTitle: true,
        elevation: 1.0,
        title: const SizedBox(
          height: 25.0, child: Text("Cart")),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: IconButton(
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Color(0xFFFFFFFF),
                    ),
                    onPressed: null,
                  ),
          )
        ],
      ),

      // Footer
      bottomNavigationBar: const Footer()
    );
  }
}