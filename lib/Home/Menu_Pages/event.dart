import 'dart:math' as math;

import 'package:expandable/expandable.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class Event extends StatefulWidget {
  const Event({Key? key}) : super(key: key);

  @override
  State createState() {
    return EventState();
  }
}

class EventState extends State<Event> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        centerTitle: true,
        elevation: 1.0,
        title: const SizedBox(height: 25.0, child: Text("Event")),
      ),
      body: ExpandableTheme(
        data: const ExpandableThemeData(
          iconColor: Colors.blue,
          useInkWell: true,
        ),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: const <Widget>[
            Event1(),
            Event2(),
            Event3(),
            Event1(),
            Event2(),
            Event3(),
          ],
        ),
      ),
    );
  }
}

class Event1 extends StatelessWidget {
  const Event1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    buildImg(String url, double height) {
      return SizedBox(
          height: height,
          child: ExtendedImage.network(
            url,
            fit: BoxFit.cover,
            cache: true,
            border: Border.all(color: Colors.red, width: 1.0),
            shape: BoxShape.rectangle,
          )
        );
    }

    buildCollapsed1() {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Demonstration",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
          ]);
    }

    buildCollapsed2() {
      return buildImg(
          "https://i.pinimg.com/originals/ab/4d/62/ab4d62a4d67a7e7b6e68aaebd6f3b16a.jpg",
          250);
    }

    buildCollapsed3() {
      return Container();
    }

    buildExpanded1() {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Demonstration",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.calendar_today),
                      Text(
                        "Friday, 25 December 2020",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      const Spacer(),
                      const Icon(Icons.location_city),
                      Text(
                        "Sirlahi District",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]);
    }

    buildExpanded2() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: buildImg(
                      "https://scontent.fixc11-1.fna.fbcdn.net/v/t1.6435-9/132795536_5173691739337659_7328187990831353977_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=340051&_nc_ohc=O0nBSnCj6qIAX9JMegV&_nc_ht=scontent.fixc11-1.fna&oh=533f1b0c338b6d847fa150f74868ecd7&oe=61CD7FFC",
                      100)),
              Expanded(
                  child: buildImg(
                      "https://scontent.fixc11-1.fna.fbcdn.net/v/t1.6435-9/133290378_5173763745997125_8495487530413027664_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=730e14&_nc_ohc=Q7KdD64-2iAAX9XcPhX&_nc_ht=scontent.fixc11-1.fna&oh=3e81ab1a4991665b176f8ecc574528f8&oe=61CE040B",
                      100)),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: buildImg(
                      "https://scontent.fixc11-1.fna.fbcdn.net/v/t1.6435-9/132801547_5173710749335758_1221968723268317585_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=730e14&_nc_ohc=T36aiTiVXZkAX9uuZtm&tn=nzuWtw_bfB53ZMmn&_nc_ht=scontent.fixc11-1.fna&oh=d0ef242cbf4e9a6de57fb2ef864d56ea&oe=61CD594A",
                      100)),
              Expanded(
                  child: buildImg(
                      "https://scontent.fixc11-1.fna.fbcdn.net/v/t1.6435-9/132835896_5173710772669089_4259810587224670550_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=730e14&_nc_ohc=XZwKSD_DW7wAX-wXFhJ&_nc_ht=scontent.fixc11-1.fna&oh=a5cc7ee8e4a1ae8b25a8ca46e64d4bab&oe=61CB97EC",
                      100)),
            ],
          ),
        ],
      );
    }

    buildExpanded3() {
      return Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  <Widget>[
            const Text(
              "Durga Beej Bhandar is always ready for testing new chemicals. We again came with new technical i.e. Miraz-40. It is a combined insecticide composition of FIPRONIL 40% + IMIDACHLOPRID 40% WG. It is Systemic & Contact Insecticide. The demonostration is going on in Sarlahi.",
              softWrap: true,
            ),
            TextButton(
              child: const Text("Read More"),
                onPressed: () {},
            ),
          ],
        ),
      );
    }

    return ExpandableNotifier(
      child: Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: ScrollOnExpand(
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expandable(
                  collapsed: buildCollapsed1(),
                  expanded: buildExpanded1(),
                ),
                Expandable(
                  collapsed: buildCollapsed2(),
                  expanded: buildExpanded2(),
                ),
                Expandable(
                  collapsed: buildCollapsed3(),
                  expanded: buildExpanded3(),
                ),
                const Divider(
                  height: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Builder(
                      builder: (context) {
                        var controller =
                            ExpandableController.of(context, required: true)!;
                        return TextButton(
                          child: Text(
                            controller.expanded ? "COLLAPSE" : "EXPAND",
                            style: Theme.of(context)
                                .textTheme
                                .button!
                                .copyWith(color: Colors.deepPurple),
                          ),
                          onPressed: () {
                            controller.toggle();
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}

class Event2 extends StatelessWidget {
  const Event2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 250,
                child: ExtendedImage.network(
                  "https://scontent.fixc11-1.fna.fbcdn.net/v/t1.6435-9/132795536_5173691739337659_7328187990831353977_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=340051&_nc_ohc=O0nBSnCj6qIAX9JMegV&_nc_ht=scontent.fixc11-1.fna&oh=533f1b0c338b6d847fa150f74868ecd7&oe=61CD7FFC",
                  fit: BoxFit.cover,
                  cache: true,
                  border: Border.all(color: Colors.red, width: 1.0),
                  shape: BoxShape.rectangle,
                )
              ),
              ScrollOnExpand(
                scrollOnExpand: true,
                scrollOnCollapse: false,
                child: ExpandablePanel(
                  theme: const ExpandableThemeData(
                    headerAlignment: ExpandablePanelHeaderAlignment.center,
                    tapBodyToCollapse: true,
                  ),
                  header: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Demonstration",
                        style: Theme.of(context).textTheme.bodyText1,
                      )),
                  collapsed: const Text(
                    "Durga Beej Bhandar is always ready for testing new chemicals. We again came with new technical i.e. Miraz-40. It is a combined insecticide composition of FIPRONIL 40% + IMIDACHLOPRID 40% WG. It is Systemic & Contact Insecticide. The demonostration is going on in Sarlahi.",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Durga Beej Bhandar is always ready for testing new chemicals. We again came with new technical i.e. Miraz-40. It is a combined insecticide composition of FIPRONIL 40% + IMIDACHLOPRID 40% WG. It is Systemic & Contact Insecticide. The demonostration is going on in Sarlahi.",
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          )),
                    ],
                  ),
                  builder: (_, collapsed, expanded) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      child: Expandable(
                        collapsed: collapsed,
                        expanded: expanded,
                        theme: const ExpandableThemeData(crossFadePoint: 0),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}

class Event3 extends StatelessWidget {
  const Event3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    buildItem(String label) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(label),
      );
    }

    buildList() {
      return Column(
        children: <Widget>[
          for (var i in [1, 2, 3, 4]) buildItem("Item $i"),
        ],
      );
    }

    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: ScrollOnExpand(
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: <Widget>[
              ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToExpand: true,
                  tapBodyToCollapse: true,
                  hasIcon: false,
                ),
                header: Container(
                  color: Colors.indigoAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        ExpandableIcon(
                          theme: const ExpandableThemeData(
                            expandIcon: Icons.arrow_right,
                            collapseIcon: Icons.arrow_drop_down,
                            iconColor: Colors.white,
                            iconSize: 28.0,
                            iconRotationAngle: math.pi / 2,
                            iconPadding: EdgeInsets.only(right: 5),
                            hasIcon: false,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Items",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                collapsed: Container(),
                expanded: buildList(),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
