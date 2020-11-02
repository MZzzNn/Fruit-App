import 'package:flutter/material.dart';
import 'rounded_container.dart';
class CartItem extends StatelessWidget {
  CartItem({this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Image(image: AssetImage(myFruit[index]['image'])) ,
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:15.0,left: 15,bottom: 3),
                  child: Container(
                    width: MediaQuery.of(context).size.width - (70+44+20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          myFruit[index]['name'],
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                        Container(
                          child:Row(
                            children: <Widget>[
                              Container(
                                height: 16,
                                width: 16,
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(4),
                                  border: Border.all(width: 1,color: Colors.orange[800]),
                                ),
                                child: Center(child: Icon(Icons.remove,color: Colors.orange[800],size: 15,)),
                              ),
                              Text(' 1 '),
                              Container(
                                height: 16,
                                width: 16,
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(4),
                                  border: Border.all(width: 1,color: Colors.orange[800]),
                                  color: Colors.orange[800],
                                ),
                                child: Center(child: Icon(Icons.add,color: Colors.white,size: 15,)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - (70+44),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:16.0),
                        child: Text(
                          '\$${myFruit[index]['price']}',
                          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0,bottom: 12.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width - (70+44),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right:8.0),
                          child: Container(
                            height: 25,
                            width: 110,
                            child: Material(
                              color: Colors.white,
                              borderRadius:BorderRadius.circular(8),
                              child: MaterialButton(
                                height: 5,
                                minWidth: 40,
                                child: Center(

                                  child: Row(
                                    //  mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                                    children: <Widget>[
                                      Icon(Icons.delete,color: Colors.orange[800],size: 18, ),
                                      Text(' Remove',style: TextStyle(color: Colors.grey,fontSize: 12),)
                                    ],
                                  ),
                                ),
                                onPressed: (){},
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 25,
                          width: 110,
                          child: Material(
                            borderRadius:BorderRadius.circular(8),
                            color: Colors.orange[800],
                            child: MaterialButton(
                              child: Text('Order Now',style: TextStyle(color: Colors.white,fontSize: 12),),
                              onPressed: (){},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
