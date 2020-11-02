import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget textField(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Container(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.7,
        child: TextField(
          //textAlign: TextAlign.start,
          style: TextStyle(fontSize: 16,color: Colors.grey),
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search, color: Colors.black54,),
            fillColor: Colors.white,
            filled: true,
            hintText: "Search something",

            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
          ),
        ),
      ),
      Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13)
        ),
        child: IconButton(icon: Icon(Icons.tune, color: Colors.black, size: 30,),
            onPressed: () {}),
      ),
    ],
  );
}