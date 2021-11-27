import 'package:flutter/material.dart';

class Insecticides extends StatefulWidget {
  const Insecticides({ Key? key }) : super(key: key);

  @override
  _InsecticidesState createState() => _InsecticidesState();
}

class _InsecticidesState extends State<Insecticides> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        centerTitle: true,
        elevation: 1.0,
        title: const SizedBox(
          height: 25.0, child: Text("Insecticide")),
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


    );
  }
}