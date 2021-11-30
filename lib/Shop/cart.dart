import 'package:durgabeej/Components/qty_drop.dart';
import 'package:durgabeej/Components/search.dart';
import 'package:durgabeej/Components/footer.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

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
          title: const SizedBox(height: 25.0, child: Text("Cart")),
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: IconButton(
                    onPressed: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => SearchPage())),
                    icon: const Icon(Icons.search)))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.green.shade100,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: const [
                            Text("Name:"),
                            Text("Price:"),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          children: [
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
                            const QtyDrop(),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 200,
                          color: Colors.orange.shade300,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(10),
                          child: Row(
                            children: const [
                              Icon(Icons.payment),
                              Text("Buy Now")
                            ],
                          ),
                        ),
                        const Spacer(),
                        Container(
                          width: 200,
                          alignment: Alignment.center,
                          color: Colors.red.shade300,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(10),
                          child: Row(
                            children: const [Icon(Icons.delete), Text("Remove")],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                color: Colors.grey.shade200,
                child: Column(
                  children: <Widget>[
                    const Text("Price Details", textAlign: TextAlign.center,),
                    Row(
                      children: const [
                        Text("Price - Items Number"),
                        Spacer(),
                        Text("12,000/-"),
                      ],
                    ),
                    Row(
                      children: const [
                        Text("Discount"),
                        Spacer(),
                        Text("1200/-"),
                      ],
                    ),
                    Row(
                      children: const [
                        Text("Delivery Charge"),
                        Spacer(),
                        Text("100/-"),
                      ],
                    ),
                    Row(
                      children: const [
                        Text("Total Amount"),
                        Spacer(),
                        Text("12,000/-"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // Footer
        bottomNavigationBar: const Footer());
  }
}
