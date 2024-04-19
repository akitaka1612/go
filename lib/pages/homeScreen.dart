import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:supergo/assets/assets.dart';
import 'package:supergo/pages/profileScreen.dart';
import 'package:supergo/pages/sellerScreen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AssetColors.blue,
        child: Column(children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/555790/pexels-photo-555790.png?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260'),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => ProfileScreen()));
                  },
                ),
                Icon(
                  Icons.room,
                  color: AssetColors.red,
                  size: 50,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 10),
            width: MediaQuery.of(context).size.width / 1.2,
            child: Material(
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white, width: 0.0),
                  borderRadius: BorderRadius.circular(10.0)),
              elevation: 3,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 12, top: 12),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search, color: Colors.black),
                    onPressed: () {},
                  ),
                  hintText: 'Busca lo que necesites',
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.only(left: 8, right: 8),
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                categoria("Frutas y verduras", true),
                categoria("Carne"),
                categoria("Oficina"),
                categoria("Regalos"),
                categoria("Miscelanea"),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 20),
              child: PhysicalShape(
                elevation: 5,
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
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    return FractionallySizedBox(
                        widthFactor: 0.8,
                        heightFactor: 0.8,
                        
                        child: PhysicalShape(

                          elevation: 2,
                          clipper: ShapeBorderClipper(
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          )),
                          color: AssetColors.grey,
                          child: Material(
                            child: InkWell(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          '1 km',
                                          style: TextStyle(
                                              color: AssetColors.red,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w800),
                                        ),
                                        // Row(
                                        //   children: <Widget>[
                                        //     Text(
                                        //       '4.9',
                                        //       style: TextStyle(
                                        //           color: Colors.grey,
                                        //           fontSize: 18,
                                        //           fontWeight: FontWeight.w800),
                                        //     ),
                                        //     Icon(Icons.star)
                                        //   ],
                                        // )
                                      ],
                                    ),
                                    Container(
                                        padding: EdgeInsets.all(10),
                                        child: Icon(
                                          Icons.shopping_cart,
                                          size: 50,
                                          color: AssetColors.red,
                                        )),
                                    Text(
                                      'SuperGo',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800,
                                          color: AssetColors.red,),
                                    )
                                  ]),
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        SellerScreen()));
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
      ),
    );
  }

  categoria(String title, [selected = false]) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5),
      child: Chip(
        backgroundColor: selected ? AssetColors.red : AssetColors.white,
        elevation: 2,
        shadowColor: Colors.grey,
        padding: EdgeInsets.all(5),
        label: Text(
          title,
          style: TextStyle(
              color: selected ? AssetColors.white : AssetColors.red,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
