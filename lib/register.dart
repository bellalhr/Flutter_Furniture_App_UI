import 'package:flutter/material.dart';
import './anim/CustomAnimation.dart';
import 'main.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Stack(
            children: <Widget>[
              FadeAnimation(
                1.2,
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/furniture_shop_bg.jpg"),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 250, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeAnimation(
                      1.3,
                      Text(
                        'Create Account',
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),

                    SizedBox(
                      height: 50,
                    ),
                    FadeAnimation(
                        1.7,
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white70,
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(247, 135, 198, .3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10),
                                )
                              ]),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom:
                                        BorderSide(color: Colors.grey[200]))),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Full Name",
                                      hintStyle: TextStyle(color: Colors.grey)),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom:
                                        BorderSide(color: Colors.grey[200]))),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Email",
                                      hintStyle: TextStyle(color: Colors.grey)),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom:
                                        BorderSide(color: Colors.grey[200]))),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.grey)),
                                ),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    FadeAnimation(
                        1.9,
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 60),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color.fromRGBO(247, 161, 25, 1),
                          ),
                          child: Center(
                            //child: Text("Login", style: TextStyle(color: Colors.white),),
                            child: new InkWell(
                              onTap: () {
                                /*Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Home()),
                            );*/
                              },
                              child: Text(
                                "Register",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 40,
                    ),
                    FadeAnimation(
                        1.7,
                        Center(
                          child: InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => HomePage()),
                              );
                            },
                            child: Text('Aleady have an account? Sign In.'),
                          )
                        ))
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}
