import 'package:flutter/cupertino.dart';
import '../constance.dart';
import '../components/cart_item.dart';
import 'package:flutter/material.dart';
import '../components/rounded_container.dart';

class MyCart extends StatefulWidget {
  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.grey[100],
        title: Text('My Cart Items',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),),
        leading: Padding(
          padding: const EdgeInsets.only(left:12.0,top: 8.0,bottom: 8.0,right: 6.0),
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
              ),
              child: Icon(Icons.arrow_back_ios,color: Colors.black,size: 20,)),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:8.0,right: 15),
            child: Container(
              width: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Icon(Icons.shopping_cart,color: Colors.black,size: 25,)),
          ),
        ],
      ),

      body: Container(
        color: Colors.grey[100],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height *0.4,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: myFruit.length,
                    itemBuilder: (BuildContext context , index){
                      return CartItem(index: index);
                    },
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 70),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Subtotal',style:kTextStyle),
                        Text('\$433.46',style: kTextStyle)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:6.0,bottom: 6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Delivery Fee',style: kTextStyle),
                          Text('\$3.80',style: kTextStyle)
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Tax',style: kTextStyle),
                        Text('\$4.51',style: kTextStyle)
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0,bottom: 8.0),
                child: Container(
                  child: Row(
                    children: List.generate(21, (index) => Text('- - ',style: TextStyle(color: Colors.black26),)),
                  ),
                ),
              ),
              Container(
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Total Amount',style:kTextStyle),
                    Text('\$441.71',style: kTextStyle)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 15),
                child: Container(
                  height: 50,
                  width: 200,
                  child: Material(
                    borderRadius:BorderRadius.circular(8),
                    color: Colors.orange[800],
                    child: MaterialButton(
                      child: Text('Check Out Now',style: TextStyle(color: Colors.white,fontSize: 18),),
                      onPressed: (){},
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}