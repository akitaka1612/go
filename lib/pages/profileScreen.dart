import 'package:flutter/material.dart';
import 'package:supergo/assets/assets.dart';

import 'businessForm.dart';
import 'businessType.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Row(
            
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.keyboard_arrow_left),
                color: AssetColors.red,
                iconSize: 70,
                onPressed: () {
                  print("press");
                  Navigator.pop(context);
                },
              )
            ],
          ),
          Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/555790/pexels-photo-555790.png?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Sergio Palacios',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.grey,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, left: 8.0, right: 8.0, bottom: 15.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    child: RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      elevation: 3,
                      child: Text(
                        'Editar',
                        style: TextStyle(
                            fontSize: 20,
                            color: AssetColors.red,
                            fontWeight: FontWeight.w800),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Calle',
                        style: TextStyle(
                            fontSize: 20,
                            color: AssetColors.red,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.only(bottom: 10),
                        width: MediaQuery.of(context).size.width / 2,
                        height: 40,
                        child: Material(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white, width: 0.0),
                              borderRadius: BorderRadius.circular(20.0)),
                          elevation: 3,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: 'Ingresar', border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Número',
                        style: TextStyle(
                            fontSize: 20,
                            color: AssetColors.red,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.only(bottom: 10),
                        width: MediaQuery.of(context).size.width / 2,
                        height: 40,
                        child: Material(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white, width: 0.0),
                              borderRadius: BorderRadius.circular(20.0)),
                          elevation: 3,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: 'Ingresar', border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'C.P.',
                        style: TextStyle(
                            fontSize: 20,
                            color: AssetColors.red,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2,
                        height: 40,
                        child: Material(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white, width: 0.0),
                              borderRadius: BorderRadius.circular(20.0)),
                          elevation: 3,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: 'Ingresar', border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Ciudad',
                        style: TextStyle(
                            fontSize: 20,
                            color: AssetColors.red,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2,
                        height: 40,
                        child: Material(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white, width: 0.0),
                              borderRadius: BorderRadius.circular(20.0)),
                          elevation: 3,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: 'Ingresar', border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Estado',
                        style: TextStyle(
                            fontSize: 20,
                            color: AssetColors.red,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2,
                        height: 40,
                        child: Material(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white, width: 0.0),
                              borderRadius: BorderRadius.circular(20.0)),
                          elevation: 3,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: 'Ingresar', border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                child: RaisedButton(
                  elevation: 3,
                  color: AssetColors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Text(
                    'Mi negocio',
                    style: TextStyle(
                        fontSize: 20,
                        color: AssetColors.white,
                        fontWeight: FontWeight.w800),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => BusinessForm()));
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
