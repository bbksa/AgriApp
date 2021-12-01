import 'package:durgabeej/Home/Menu_Pages/contact.dart';
import 'package:durgabeej/Home/Menu_Pages/event.dart';
import 'package:durgabeej/Learn/learn.dart';
import 'package:durgabeej/Shop/shop.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.green.shade100,
        child: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.green.shade500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              "https://www.nepalyp.com/img/np/k/1597042974-71-durga-beej-bhandar.jpg")),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Durga Beej Bhandar",
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Mahendranagar, Dhanusha, Nepal",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(width: 65),
                      Icon(Icons.call),
                      SizedBox(width: 5),
                      Text(
                        "+977 9807824963",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(width: 95),
                      Text(
                        "+977 041-540238",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(width: 65),
                      Icon(Icons.email_outlined),
                      SizedBox(width: 5),
                      Text(
                        "durgabeej0@gmail.com",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            PreferredSize(
                child: Container(
                  color: Colors.green.shade700,
                  height: 4.0,
                ),
                preferredSize: const Size.fromHeight(4.0)),
            const SizedBox(height: 10),
            ListTile(
              leading: const Icon(Icons.event, color: Colors.black),
              title: const Text('Events'),
              hoverColor: Colors.red,
              tileColor: Colors.green.shade200,
              onTap: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Event();
                          },
                        ),
                      );
              },
            ),
            const SizedBox(height: 10),
            ListTile(
              onTap: () {
                Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (context) {
                      return const Learn();
                    },
                  ),
                );
              },
              leading: const Icon(Icons.school, color: Colors.black),
              title: const Text('Education'),
              hoverColor: Colors.red,
              tileColor: Colors.green.shade200,
            ),
            const SizedBox(height: 10),
            ListTile(
              onTap: () {
                Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (context) {
                      return const Shop();
                    },
                  ),
                );
              },
              leading: const Icon(Icons.shop_2, color: Colors.black),
              title: const Text('Shopping'),
              hoverColor: Colors.red,
              tileColor: Colors.green.shade200,
            ),
            const SizedBox(height: 10),
            ListTile(
              onTap: () {
                Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (context) {
                      return const Shop();
                    },
                  ),
                );
              },
              leading: const Icon(Icons.info, color: Colors.black),
              title: const Text('About Us'),
              hoverColor: Colors.red,
              tileColor: Colors.green.shade200,
            ),
            const SizedBox(height: 10),
            ListTile(
              onTap: () {
                Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (context) {
                      return const Contactus();
                    },
                  ),
                );
              },
              leading: const Icon(Icons.contact_page, color: Colors.black),
              title: const Text('Contact Us'),
              hoverColor: Colors.red,
              tileColor: Colors.green.shade200,
            ),
            const SizedBox(height: 10),
            PreferredSize(
                child: Container(
                  color: Colors.green.shade700,
                  height: 4.0,
                ),
                preferredSize: const Size.fromHeight(4.0)),
            const SizedBox(height: 10),
            BottomAppBar(
              child: Container(
                padding: const EdgeInsets.all(10),
                color: Colors.grey.shade300,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(width: 30),
                    Icon(Icons.facebook, color: Colors.blue, size: 40),
                    SizedBox(width: 20),
                    Icon(Icons.facebook, color: Colors.blue, size: 40),
                    SizedBox(width: 20),
                    Icon(Icons.facebook, color: Colors.blue, size: 40),
                    SizedBox(width: 20),
                    Icon(Icons.facebook, color: Colors.blue, size: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
