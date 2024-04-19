import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:supergo/assets/assets.dart';
import 'package:supergo/pages/productScreen.dart';

class SellerScreen extends StatefulWidget {
  SellerScreen({Key key}) : super(key: key);

  @override
  _SellerScreenState createState() => _SellerScreenState();
}

class _SellerScreenState extends State<SellerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: AssetColors.blue,
      // margin: EdgeInsets.all(5),
      padding: EdgeInsets.only(top: 10),
      child: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.keyboard_arrow_left),
                color: AssetColors.white,
                iconSize: 70,
                onPressed: () {
                  print("press");
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                  right: 20.0, left: 20.0, bottom: 10.0, top: 10.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text('La \nTiendita',
                        style: TextStyle(
                            fontSize: 33,
                            fontWeight: FontWeight.w800,
                            color: AssetColors.white)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: 20.0, left: 20.0, bottom: 10.0, top: 10.0),
                    child: Text('Contacto',
                        style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w800,
                            color: AssetColors.yellow)),
                  ),
                  Wrap(
                    spacing: 30,
                    children: <Widget>[
                      Icon(
                        Icons.phone,
                        size: 40,
                        color: AssetColors.white,
                      ),
                      Icon(
                        Icons.whatshot,
                        size: 40,
                        color: AssetColors.white,
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 136.00,
                    width: 173.00,
                    decoration: BoxDecoration(
                      color: Color(0xfff96c6a),
                      // border: Border.all(
                      //   width: 1.00,
                      //   color: Color(0xff707070),
                      // ),
                      borderRadius: BorderRadius.circular(30.00),
                    ),
                    child: Icon(
                      Icons.shopping_basket,
                      size: MediaQuery.of(context).size.width / 3.5,
                      color: AssetColors.white,
                    ),
                  ),
                  Container(
                      // height: 136.00,
                      width: MediaQuery.of(context).size.width / 3.5,
                      margin: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Color(0xfff96c6a),
                        borderRadius: BorderRadius.circular(25.00),
                      ),
                      child: Center(
                        child: Text('1.3 km',
                            style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w800,
                                color: AssetColors.white)),
                      )),
                  // Container(
                  //   width: MediaQuery.of(context).size.width / 3.5,
                  //   child: Material(
                  //     color: AssetColors.red,
                  //     elevation: 3,
                  //     shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.all(Radius.circular(6.0))),
                  //     child: ,
                  //   ),
                  // )
                ],
              ),
            )
          ],
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(top: 20),
            child: PhysicalShape(
              elevation: 10,
              clipper: ShapeBorderClipper(
                  shape: ContinuousRectangleBorder(
                      // borderRadius: BorderRadius.circular(100.0),
                      borderRadius: BorderRadius.lerp(
                          BorderRadius.only(
                              topLeft: Radius.circular(100.0),
                              topRight: Radius.circular(100.0),
                              bottomLeft: Radius.circular(100.0),
                              bottomRight: Radius.circular(100.0)),
                          BorderRadius.only(
                              topLeft: Radius.circular(100.0),
                              topRight: Radius.circular(100.0),
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(0.0)),
                          10))),
              color: Colors.white,
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 15, right: 15, top: 5, bottom: 5),
                        height: 190.00,
                        // width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                          color: Color(0xfff4f4f4),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(3.00, 3.00),
                              color: Color(0xff000000).withOpacity(0.16),
                              blurRadius: 6,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(23.00),
                        ),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(4),
                                  margin: EdgeInsets.all(5),
                                  // height: 16.00,
                                  // width: 61.00,
                                  decoration: BoxDecoration(
                                    color: Color(0xffc0d9e6),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(2.00, 3.00),
                                        color:
                                            Color(0xff000000).withOpacity(0.16),
                                        blurRadius: 6,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(6.00),
                                  ),
                                  child: Text('CATEGORÍA',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w800,
                                          color: AssetColors.white)),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.all(10),
                                  padding: EdgeInsets.only(bottom: 10),
                                  child: Icon(
                                    Icons.fastfood,
                                    size: 70,
                                    color: AssetColors.red,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Quinoa',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                      color: AssetColors.red),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "\$35",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                      color: AssetColors.red),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                ProductScreen()));
                      });

                  return FractionallySizedBox(
                      widthFactor: 0.8,
                      heightFactor: 0.8,
                      child: PhysicalShape(
                        elevation: 2,
                        clipper: ShapeBorderClipper(
                            shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )),
                        color: Colors.white,
                        child: Material(
                          child: InkWell(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 5.0, top: 5.0),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              5.5,
                                          child: Material(
                                            elevation: 3,
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(6.0))),
                                            child: Center(
                                              child: Text(
                                                'Categoria',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Icon(Icons.favorite)
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Icon(
                                      Icons.fastfood,
                                      size: 70,
                                    ),
                                  ),
                                  Text(
                                    'Quinoa',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    '\$35',
                                    style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.grey),
                                  )
                                ]),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      ProductScreen()));
                            },
                          ),
                        ),
                      ));
                },
              ),
            ),
          ),
        ),
      ]),
    ));
  }
}
