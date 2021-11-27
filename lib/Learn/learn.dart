import 'package:durgabeej/footer.dart';
import 'package:flutter/material.dart';

class Learn extends StatefulWidget {
  const Learn({ Key? key }) : super(key: key);

  @override
  _LearnState createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        centerTitle: true,
        elevation: 1.0,
        title: const SizedBox(
          height: 25.0, child: Text("Learn")),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: IconButton(
                    icon: Icon(
                      Icons.post_add,
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