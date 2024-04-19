import 'package:flutter/material.dart';
import 'package:supergo/assets/assets.dart';
import 'package:supergo/pages/businessCatalog.dart';

class BusinessType extends StatefulWidget {
  BusinessType({Key key}) : super(key: key);

  @override
  _BusinessTypeState createState() => _BusinessTypeState();
}

class _BusinessTypeState extends State<BusinessType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: EdgeInsets.all(12),
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.close),
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
            width: MediaQuery.of(context).size.width / 1.2,
            child: Text('¿Qué tipo de negocio quieres?',
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
                            child: Padding(
                              padding: EdgeInsets.all(18.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  RawMaterialButton(
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.fastfood,
                                      size: 40.0,
                                      color: AssetColors.white,
                                    ),
                                    shape: CircleBorder(),
                                    elevation: 2.0,
                                    fillColor: AssetColors.red,
                                    padding: EdgeInsets.all(15.0),
                                  ),
                                  Text('Restaurante',
                                      style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.w800,
                                          color: AssetColors.red)),
                                  Text('243 productos',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800,
                                          color: AssetColors.red))
                                ],
                              ),
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
