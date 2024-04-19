import 'package:flutter/material.dart';
import 'package:supergo/assets/assets.dart';
import 'package:supergo/pages/businessWelcome.dart';

class BusinessCatalog extends StatefulWidget {
  BusinessCatalog({Key key}) : super(key: key);

  @override
  _BusinessCatalogState createState() => _BusinessCatalogState();
}

class _BusinessCatalogState extends State<BusinessCatalog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: EdgeInsets.all(15),
          alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: AssetColors.red,
                    iconSize: 50,
                    onPressed: () {
                      print("press");
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width / 1.1,
            child: Text('Elige los productos que deseas publicar',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w800,
                    color: AssetColors.red)),
          ),
          Container(
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width / 1.1,
            child: Text('Llevas 12 productos',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: AssetColors.red)),
          ),
          Expanded(
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 1.1,
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: MediaQuery.of(context).size.height / 6,
                      child: Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Card(
                          color: AssetColors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          elevation: 3,
                          child: Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                RawMaterialButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.fastfood,
                                    size: 40.0,
                                    color: AssetColors.red,
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                  elevation: 2.0,
                                  fillColor: Colors.white,
                                  padding: EdgeInsets.all(15.0),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Column(
                                    children: <Widget>[
                                      Text('Producto',
                                          style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.w800,
                                              color: AssetColors.red)),
                                      Text('\$35.50',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800,
                                              color: AssetColors.red))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 1.3,
                height: MediaQuery.of(context).size.height / 8,
                child: RaisedButton(
                  elevation: 5,
                  color: AssetColors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(500.0))),
                  child: Text(
                    'Siguiente',
                    style: TextStyle(
                        fontSize: 30,
                        color: AssetColors.white,
                        fontWeight: FontWeight.w800),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => BusinessWelcome()));
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
