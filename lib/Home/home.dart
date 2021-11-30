import 'package:durgabeej/Home/home_body.dart';
import 'package:durgabeej/Home/menu.dart';
import 'package:durgabeej/Components/search.dart';
import 'package:durgabeej/Components/footer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Menu(),
        appBar: AppBar(
          backgroundColor: Colors.green.shade300,
          centerTitle: true,
          elevation: 1.0,
          title: Row(
            children: const [
              SizedBox(height: 25.0, child: Text("Durga Beej Bhandar", textAlign: TextAlign.center)),
            ],
          ),
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: IconButton(
                    onPressed: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => SearchPage())
                    ),
                    icon: const Icon(Icons.search))
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: IconButton(
                icon: const Icon(
                  Icons.notifications,
                  color: Color(0xFFFFFFFF),
                ),
                onPressed: () {},
              ),
            )
          ],
          bottom: PreferredSize(
            child: Container(
              color: Colors.green.shade800,
              height: 4.0,
            ),
            preferredSize: const Size.fromHeight(4.0)
          ),
        ),
        // Body
        body: const HomeBody(),
        // Footer
        bottomNavigationBar: const Footer()
    );
  }
}
