import 'package:durgabeej/Home/home_body.dart';
import 'package:durgabeej/footer.dart';
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
          height: 25.0, child: Text("Durga Beej Bhandar")),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: IconButton(
                    icon: Icon(
                      Icons.notifications,
                      color: Color(0xFFFFFFFF),
                    ),
                    onPressed: null,
                  ),
          )
        ],
      ),
      // Body
      body: const HomeBody(),
      // Footer
      bottomNavigationBar: const Footer()
    );
  }
}
