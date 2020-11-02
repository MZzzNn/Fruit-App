import 'package:flutter/material.dart';

List<Map> myFruit = [
  {
    'name': 'Coconut Fruit',
    'price': '5.25',
    'image': 'images/coconut.png',
  },
  {
    'name': 'Orange Fruit',
    'price': '124.00',
    'image': 'images/orange.png',
  },
  {
    'name': 'Lychee',
    'price': '30.12',
    'image': 'images/lychee.png',
  },
  {
    'name': 'Apple',
    'price': '4.21',
    'image': 'images/apple.png',
  }
  ,
  {
    'name': 'Best Mango',
    'price': '5.30',
    'image': 'images/mango.png',
  },
  {
    'name': 'Strawberry',
    'price': '40.25',
    'image': 'images/straw.png',
  }
];
Widget roundedContainer(int index) {
  return Container(
    height: 300,
    width: 200,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 5
            // spreadRadius:
            )
      ],
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 6.0, left: 6.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  myFruit[index]['name'],
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0, bottom: 10),
                  child: Text(
                    'Only \$${myFruit[index]['price']}',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
        ),
        Center(
            child: Image(
          image: AssetImage(myFruit[index]['image']),
          fit: BoxFit.cover,
          height: 99,
        )),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: Colors.orange[800],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    bottomRight: Radius.circular(4),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  )),
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
