import 'package:flutter/material.dart';
import 'package:supergo/assets/assets.dart';
import 'package:supergo/main.dart';
import 'package:supergo/pages/tipListScreen.dart';

class BusinessWelcome extends StatefulWidget {
  BusinessWelcome({Key key}) : super(key: key);

  @override
  _BusinessWelcomeState createState() => _BusinessWelcomeState();
}

class _BusinessWelcomeState extends State<BusinessWelcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: EdgeInsets.all(15),
          alignment: Alignment.center,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(right: 20, left: 20, bottom: 20),
                width: MediaQuery.of(context).size.width / 1.2,
                child: Text('¡Felicidades!',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w800,
                        color: AssetColors.red)),
              ),
              Container(
                padding: EdgeInsets.only(right: 20, left: 20, bottom: 20),
                width: MediaQuery.of(context).size.width / 1.2,
                child: Text('Has dado el primer paso en tu negocio',
                    style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey)),
              ),
              Container(
                padding: EdgeInsets.only(right: 20, left: 20, bottom: 20),
                width: MediaQuery.of(context).size.width / 1.2,
                child: Text(
                    'Recuerda revisar todos los consejos que tenemos preparados para ti',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: AssetColors.red)),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    height: MediaQuery.of(context).size.height / 8.5,
                    child: RaisedButton(
                      elevation: 5,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(500.0))),
                      child: Text(
                        'Consejos',
                        style: TextStyle(
                            fontSize: 30,
                            color: AssetColors.red,
                            fontWeight: FontWeight.w800),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => TipListScreen()));
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
                    height: MediaQuery.of(context).size.height / 8.5,
                    child: RaisedButton(
                      elevation: 5,
                      color: AssetColors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(500.0))),
                      child: Text(
                        'Finalizar',
                        style: TextStyle(
                            fontSize: 30,
                            color: AssetColors.white,
                            fontWeight: FontWeight.w800),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => Home()));
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
