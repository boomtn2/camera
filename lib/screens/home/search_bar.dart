import 'package:flutter/material.dart';

class SearchInput extends StatefulWidget {
  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 10, right: 10),
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: TextField(
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                  prefixIcon: Container(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    width: 18,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
