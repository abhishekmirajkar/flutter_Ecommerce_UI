import 'package:assignmentflutterapp/main.dart';
import 'package:flutter/material.dart';

class product extends StatefulWidget {
  @override
  _productState createState() => _productState();
}

class _productState extends State<product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff05986b),
      ),
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  height: 100,
                  decoration: BoxDecoration(color: Color(0xff05986b)),
                ),
                Container(
                  child: Text(
                    "Redmi K20 Pro",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListView(
            shrinkWrap: true,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Reviews",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Row(
                        children: <Widget>[
                          Image.asset(
                            "assets/star.png",
                            height: 15,
                          ),
                          Image.asset(
                            "assets/star.png",
                            height: 15,
                          ),
                          Image.asset(
                            "assets/star.png",
                            height: 15,
                          ),
                          Image.asset(
                            "assets/star.png",
                            height: 15,
                          ),
                          Image.asset(
                            "assets/star.png",
                            height: 15,
                          ),
                        ],
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: <Widget>[
                      Text(
                        "Brand",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Redmi",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xff05986b)),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: <Widget>[
                      Text(
                        "Storage",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "128 GB",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xff05986b)),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: <Widget>[
                      Text(
                        "Color",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Red",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xff05986b)),
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Stack(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/kpro.png"),
                    backgroundColor: Colors.grey.withOpacity(0.2),
                    radius: 210,
                  ),
                  Positioned(
                    bottom: 100,
                    right: 0,
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 190,
                      decoration: BoxDecoration(
                        color: Color(0xff05986b),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30)),
                      ),
                      child: Text(
                        "Price \$ 600",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.only(left: 30),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Details",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 26),
                  )),
              Container(
                  padding: EdgeInsets.only(left: 30),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Redmi k20 Pro packs with 6GB RAM & 128GB Storage to store all your memories, The phone also packs with super amoled display, Usb Type C, Fast Charging, 48MP+13MP+8MP Camera Setuo",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w300,
                        fontSize: 16),
                  )),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 30, right: 00),
        height: 80,
        color: Color(0xff05986b),
        child: InkWell(
          //onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => product())),
          child: Padding(
            padding: EdgeInsets.only(top: 1.0),
            child: Row(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(left: 70),
                        child: Text(
                          "BUY IT NOW",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 25),
                        )),
                    SizedBox(
                      width: 85,
                    ),
                    Container(
                      decoration: BoxDecoration(color: Color(0xFF00724E)),
                      padding: EdgeInsets.all(30),
                      child: Icon(Icons.favorite_border),
                    )
                  ],
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

    path.lineTo(0, 0);
    double xcenter = size.width * 0.5;
    double ycenter = size.height;

    path.quadraticBezierTo(xcenter, ycenter, size.width, 0);

    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
