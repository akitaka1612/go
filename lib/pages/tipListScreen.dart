import 'package:flutter/material.dart';
import 'package:supergo/assets/assets.dart';
import 'package:supergo/pages/businessCatalog.dart';

class TipListScreen extends StatefulWidget {
  TipListScreen({Key key}) : super(key: key);

  @override
  _TipListScreenState createState() => _TipListScreenState();
}

class _TipListScreenState extends State<TipListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),  
            width: MediaQuery.of(context).size.width / 1.2,
            child: Text('Lee, pon en práctica y crece',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w800,
                    color: AssetColors.red)),
          ),
          Expanded(
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 1.2,
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      child: Container(
                        height: MediaQuery.of(context).size.height / 4,
                        child: Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Card(
                            color: AssetColors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            elevation: 3,
                            child: Column(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.topRight,
                                  child: RawMaterialButton(

                                    onPressed: () {},
                                    child: Icon(
                                      Icons.lightbulb_outline,
                                      size: 50.0,
                                      color: AssetColors.white,
                                    ),
                                    shape: CircleBorder(),
                                    elevation: 2.0,
                                    fillColor: AssetColors.yellow,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 18.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Consigue más clientes',
                                          style: TextStyle(
                                              fontSize: 35,
                                              fontWeight: FontWeight.w800,
                                              color: AssetColors.red)),
                                      Text('¿Qué rayos es el Marketing?',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800,
                                              color: AssetColors.red))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                BusinessCatalog()));
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
