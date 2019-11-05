import 'package:flutter/material.dart';
import './anim/CustomAnimation.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final leftMargin=15.0;
  final rightMargin=15.0;
  final todayPromoHeight=180.0;
  final todayPromoWidth=250.0;
  @override
  Widget build(BuildContext context) {
    BoxDecoration myBoxDecoration() {
      return BoxDecoration(
          border: Border.all(color: Color(0xFFBFBCBA) //
              ),
          borderRadius: BorderRadius.all(Radius.circular(5)));
    }

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      color: Colors.red,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFECEDF0),
          body: FadeAnimation(1.4,SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 35, left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Furniture Shop',
                          style: TextStyle(fontSize: 23),
                        ),
                        Icon(Icons.shopping_cart)
                      ],
                    )),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Text(
                    'Get unique furniture from home',
                    style: TextStyle(fontSize: 14, color: Color(0xFF363636)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, right: 15),
                  decoration: myBoxDecoration(),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search product",
                              icon: Icon(Icons.search),
                              hintStyle: TextStyle(color: Colors.grey)),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Categories',
                          style: TextStyle(fontSize: 15),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'View All',
                              style: TextStyle(fontSize: 15,color: Color(0xFF2F4AA1)),

                            ),
                            Icon(Icons.arrow_right)
                          ],
                        )

                      ],
                    )),
                Container(
                  height: 100,
                  margin: EdgeInsets.only(top: 15,left: leftMargin,right:rightMargin),
                  child: ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[

                      Container(
                        width: 160.0,
                        height: 160.0,
                        child: Card(
                          child: Container(
                            margin: EdgeInsets.only(top: 18),
                            child: Column(

                              children: <Widget>[
                                Image(
                                  image: AssetImage("assets/images/live_room.png"),
                                ),
                                Text('Live Room')
                              ],
                            ),

                          ),
                        ),
                      ),
                      Container(
                        width: 160.0,
                        height: 160.0,
                        child: Card(
                          child: Container(
                            margin: EdgeInsets.only(top: 18),
                            child: Column(

                              children: <Widget>[
                                Image(
                                  image: AssetImage("assets/images/birth_room.png"),
                                ),
                                Text('Birth Room')
                              ],
                            ),

                          ),
                        ),
                      ),
                      Container(
                        width: 160.0,
                        height: 160.0,
                        child: Card(
                          child: Container(
                            margin: EdgeInsets.only(top: 18),
                            child: Column(

                              children: <Widget>[
                                Image(
                                  image: AssetImage("assets/images/work_space.png"),
                                ),
                                Text('Work Space')
                              ],
                            ),

                          ),
                        ),
                      ),
                      Container(
                        width: 160.0,
                        height: 160.0,
                        child: Card(
                          child: Container(
                            margin: EdgeInsets.only(top: 18),
                            child: Column(

                              children: <Widget>[
                                Image(
                                  image: AssetImage("assets/images/live_room.png"),
                                ),
                                Text('Live Room')
                              ],
                            ),

                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Today Promo',
                          style: TextStyle(fontSize: 15),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'View All',
                              style: TextStyle(fontSize: 15,color: Color(0xFF2F4AA1)),

                            ),
                            Icon(Icons.arrow_right)
                          ],
                        )

                      ],
                    )),
                Container(
                  height: todayPromoHeight,
                  margin: EdgeInsets.only(top: 15,left: leftMargin,right:rightMargin),
                  child: ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[

                      Container(
                        width: todayPromoWidth,
                        height: todayPromoHeight,
                        child: Card(
                          child: Container(
                            margin: EdgeInsets.only(top: 18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 10,top: 10,right: 15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('All Item Furniture Discount',style: TextStyle(fontSize: 11),),
                                      Text('Up to 50%',style: TextStyle(fontSize: 11),),
                                      Container(
                                        width: todayPromoWidth-33,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Image(
                                              image: AssetImage("assets/images/ic_todays_promo.png"),
                                              height: 100,
                                              width: 100,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(2),
                                        color: Color(0xFFB1ADAD),
                                        child: Text('04 November 2019',style: TextStyle(fontSize: 11,color: Colors.red),),
                                      )
                                    ],
                                  ),
                                ),

                              ],
                            ),

                          ),
                        ),
                      ),
                      Container(
                        width: todayPromoWidth,
                        height: todayPromoHeight,
                        child: Card(
                          child: Container(
                            margin: EdgeInsets.only(top: 18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 10,top: 10,right: 15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('All Item Furniture Discount',style: TextStyle(fontSize: 11),),
                                      Text('Up to 50%',style: TextStyle(fontSize: 11),),
                                      Container(
                                        width: todayPromoWidth-33,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Image(
                                              image: AssetImage("assets/images/ic_todays_promo.png"),
                                              height: 100,
                                              width: 100,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(2),
                                        color: Color(0xFFB1ADAD),
                                        child: Text('04 November 2019',style: TextStyle(fontSize: 11,color: Colors.red),),
                                      )
                                    ],
                                  ),
                                ),

                              ],
                            ),

                          ),
                        ),
                      ),
                      Container(
                        width: todayPromoWidth,
                        height: todayPromoHeight,
                        child: Card(
                          child: Container(
                            margin: EdgeInsets.only(top: 18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 10,top: 10,right: 15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('All Item Furniture Discount',style: TextStyle(fontSize: 11),),
                                      Text('Up to 50%',style: TextStyle(fontSize: 11),),
                                      Container(
                                        width: todayPromoWidth-33,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Image(
                                              image: AssetImage("assets/images/ic_todays_promo.png"),
                                              height: 100,
                                              width: 100,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(2),
                                        color: Color(0xFFB1ADAD),
                                        child: Text('04 November 2019',style: TextStyle(fontSize: 11,color: Colors.red),),
                                      )
                                    ],
                                  ),
                                ),

                              ],
                            ),

                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Trending Furniture',
                          style: TextStyle(fontSize: 15),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'View All',
                              style: TextStyle(fontSize: 15,color: Color(0xFF2F4AA1)),

                            ),
                            Icon(Icons.arrow_right)
                          ],
                        )

                      ],
                    )),
                Container(
                  height: todayPromoHeight,
                  margin: EdgeInsets.only(top: 15,left: leftMargin,right:rightMargin,bottom: 15),
                  child: ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[

                      Card(
                        child: Stack(
                          children: <Widget>[
                            Container(
                              width: todayPromoWidth,
                              height: todayPromoHeight,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/trand_furniture.png"),
                                  fit: BoxFit.cover,


                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        child: Stack(
                          children: <Widget>[
                            Container(
                              width: todayPromoWidth,
                              height: todayPromoHeight,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/trand_furniture.png"),
                                  fit: BoxFit.cover,


                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        child: Stack(
                          children: <Widget>[
                            Container(
                              width: todayPromoWidth,
                              height: todayPromoHeight,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/trand_furniture.png"),
                                  fit: BoxFit.cover,


                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ))
      ),
    );
  }
}
