import 'package:flutter/material.dart';
import '../components/rounded_container.dart';
import '../components/text_field.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        leading: Icon(Icons.sort, color: Colors.black, size: 28,),
        actions: <Widget>[
          Stack(
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.shopping_cart, color: Colors.black, size: 26,),
                  onPressed: () {}),
              Positioned(
                top: 10,
                right: 12,
                child: Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange[800],
                  ),
                ),
              )
            ],
          )
        ],
      ),

      body: Container(
        color: Colors.grey[100],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              textField(context),
              Container(
                margin: EdgeInsets.symmetric(vertical: 25),
                height: 180,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(image:
                    NetworkImage(
                        "https://mostaql.hsoubcdn.com/uploads/277418-1464202260-strawberry_lens-correction.png"),
                        fit: BoxFit.cover)
                ),
              ),
              Container(
                height: 25,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Popular Foods',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),),
                    Text('View All',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),)
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 20),
                height: MediaQuery.of(context).size.height - (433 + AppBar().preferredSize.height),
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                    itemCount: myFruit.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10, childAspectRatio: 0.82),
                      itemBuilder: (BuildContext context, index) {
                        return roundedContainer(index);
                      }),
              ),

            ],
          ),
        ),
      ),
    );
  }
}