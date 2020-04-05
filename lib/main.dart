import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/painting.dart';
import 'package:assignmentflutterapp/product.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff05986b),
        elevation: 0.0,
        title: Text("Ultimate Hive Store"),
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                child: ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    height: 420,
                    decoration: BoxDecoration(color: Color(0xff05986b)),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            "Smartphones",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 40),
                          ),
                          Text(
                            "Best of 2020",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 20),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Price \$699  |  Color: Black  |  Model : 6GB 64GB ",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          CarouselSlider(
                            height: 180.0,
                            items: [
                              "assets/iphone.png",
                              "assets/kpro.png",
                              "assets/samsung.png"
                            ].map((i) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                      width: 180,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5.0),
                                      child: FittedBox(
                                        child: Image.asset(
                                          '$i',
                                        ),
                                        fit: BoxFit.fill,
                                      ));
                                },
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 320),
                padding: EdgeInsets.only(left: 60, right: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 25.0, // soften the shadow
                              spreadRadius: 5.0, //extend the shadow
                              offset: Offset(
                                10.0, // Move to right 10  horizontally
                                10.0, // Move to bottom 10 Vertically
                              ),
                            )
                          ],
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(Icons.arrow_back),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 25.0, // soften the shadow
                              spreadRadius: 5.0, //extend the shadow
                              offset: Offset(
                                10.0, // Move to right 10  horizontally
                                10.0, // Move to bottom 10 Vertically
                              ),
                            )
                          ],
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(Icons.arrow_forward),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text(
                "Explore More",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 50, right: 50),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.black12),
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                    ),
                  ),
                ),
                Icon(Icons.search)
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              padding: EdgeInsets.only(left: 20),
              height: 200,
              child: ListView(
                shrinkWrap: true,
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[],
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 55, 0, 0),
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xff05986b),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 70,
                              ),
                              Text(
                                "Iphone 11 Pro",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "\$ 699",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )),
                      Container(
                        margin: EdgeInsets.only(
                          left: 10,
                        ),
                        width: 100,
                        child: Image.asset("assets/iphone.png"),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[],
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 55, 0, 0),
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xff05986b),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 70,
                              ),
                              Text(
                                "Iphone 11 Pro",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "\$ 699",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )),
                      Container(
                        margin: EdgeInsets.only(
                          left: 10,
                        ),
                        width: 100,
                        child: Image.asset("assets/iphone.png"),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[],
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 55, 0, 0),
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xff05986b),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 70,
                              ),
                              Text(
                                "Iphone 11 Pro",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "\$ 699",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )),
                      Container(
                        margin: EdgeInsets.only(
                          left: 10,
                        ),
                        width: 100,
                        child: Image.asset("assets/iphone.png"),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[],
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 55, 0, 0),
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xff05986b),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 70,
                              ),
                              Text(
                                "Iphone 11 Pro",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "\$ 699",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )),
                      Container(
                        margin: EdgeInsets.only(
                          left: 10,
                        ),
                        width: 100,
                        child: Image.asset("assets/iphone.png"),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[],
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 55, 0, 0),
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xff05986b),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 70,
                              ),
                              Text(
                                "Iphone 11 Pro",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "\$ 699",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )),
                      Container(
                        margin: EdgeInsets.only(
                          left: 10,
                        ),
                        width: 100,
                        child: Image.asset("assets/iphone.png"),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[],
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 55, 0, 0),
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xff05986b),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 70,
                              ),
                              Text(
                                "Iphone 11 Pro",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "\$ 699",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )),
                      Container(
                        margin: EdgeInsets.only(
                          left: 10,
                        ),
                        width: 100,
                        child: Image.asset("assets/iphone.png"),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              )),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 30, right: 30),
        height: 60,
        color: Color(0xff05986b),
        child: InkWell(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => product())),
          child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
                Spacer(),
                Icon(
                  Icons.add_shopping_cart,
                  color: Colors.white,
                ),
                Spacer(),
                Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                Spacer(),
                Icon(
                  Icons.zoom_out_map,
                  color: Colors.white,
                ),
                Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.yellow,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0, size.height * 0.7);
    double xcenter = size.width * 0.5;
    double ycenter = size.height;

    path.quadraticBezierTo(xcenter, ycenter, size.width, size.height * 0.7);

    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
