import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:supergo/assets/assets.dart';

class ProductScreen extends StatefulWidget {
  ProductScreen({Key key}) : super(key: key);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: AssetColors.blue,
          child: Center(
            child: ListView(
              children: <Widget>[
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
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.fastfood,
                    size: MediaQuery.of(context).size.width / 2.2,
                    color: AssetColors.white,
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
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
                        color: AssetColors.white,
                        child: ListView(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Expanded(
                                    child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    'Nombre del producto',
                                    softWrap: true,
                                    overflow: TextOverflow.clip,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 50,
                                      fontWeight: FontWeight.w800,
                                      color: AssetColors.red,
                                    ),
                                  ),
                                ))
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
                                  height: 50,
                                  child: RaisedButton(
                                    color: AssetColors.blue,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20.0))),
                                    elevation: 3,
                                    child: Text(
                                      'Categoría',
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: AssetColors.white,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                Icon(
                                  Icons.favorite,
                                  size: 50,
                                  color: AssetColors.red,
                                ),
                                // Padding(
                                //   padding: const EdgeInsets.all(8.0),
                                //   child: Container(
                                //     width:
                                //         MediaQuery.of(context).size.width / 2.5,
                                //     height: 50,
                                //     child: RaisedButton(
                                //       color: AssetColors.blue,
                                //       shape: RoundedRectangleBorder(
                                //           borderRadius: BorderRadius.all(
                                //               Radius.circular(20.0))),
                                //       elevation: 3,
                                //       child: Text(
                                //         'Categoría',
                                //         style: TextStyle(
                                //             fontSize: 25,
                                //             color: AssetColors.white,
                                //             fontWeight: FontWeight.w800),
                                //       ),
                                //       onPressed: () {},
                                //     ),
                                //   ),
                                // ),
                                // Padding(
                                //   padding: const EdgeInsets.all(8.0),
                                //   child: Icon(Icons.favorite, size: 50, color: AssetColors.red,),
                                // ),
                              ],
                            ),
                            Container(

                              padding: EdgeInsets.all(20.0),
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque et est ligula. Fusce auctor libero massa.',
                                  textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.all(20.0),
                            //   child:
                            // ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text(
                                  '\$35.50',
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: AssetColors.red,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            )
                          ],
                        ))),
              ],
            ),
          )),
    );
  }
}
