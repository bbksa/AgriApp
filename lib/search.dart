import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final searchText = TextEditingController();

  void clearText() {
    searchText.clear();
  }

  SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // The search area here
          title: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: TextField(
            controller: searchText,
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: clearText,
                ),
                hintText: 'Search...',
                border: InputBorder.none),
          ),
        ),
      )),
    );
  }
}
