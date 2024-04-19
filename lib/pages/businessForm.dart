import 'package:flutter/material.dart';
import 'package:supergo/assets/assets.dart';
import 'package:supergo/pages/businessType.dart';

final _formKey = GlobalKey<FormState>();

class BusinessForm extends StatefulWidget {
  BusinessForm({Key key}) : super(key: key);

  @override
  _BusinessFormState createState() => _BusinessFormState();
}

class _BusinessFormState extends State<BusinessForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FormWidget(),
    );
  }
}

class FormWidget extends StatefulWidget {
  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  int _stepNumber = 1;
  bool _delivery = false;

  void saveData(BuildContext context) {
    _formKey.currentState.save();
  }

  void nextPage(BuildContext context) {
    print(_stepNumber);
    setState(() {
      if (_stepNumber == 5) {
        _stepNumber = 5;
      } else {
        ++_stepNumber;
      }
    });
  }

  void previousPage(BuildContext context) {
    print(_stepNumber);
    setState(() {
      if (_stepNumber == 1) {
        _stepNumber = 1;
      } else {
        --_stepNumber;
      }
    });
  }

  Widget formStartBuilder(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             
              Padding(
                padding: EdgeInsets.only(right: 35.0, left: 35.0),
                child: Text('Inicia tu negocio en menos de',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w800,
                        color: AssetColors.red)),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('5 min.',
                    style: TextStyle(
                        fontSize: 65,
                        fontWeight: FontWeight.w800,
                        color: AssetColors.red)),
              ),
            ],
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.height / 8,
              child: RaisedButton(
                elevation: 5,
                color: AssetColors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(500.0))),
                child: Text(
                  'Crear negocio',
                  style: TextStyle(
                      fontSize: 30,
                      color: AssetColors.white,
                      fontWeight: FontWeight.w800),
                ),
                onPressed: () {
                  nextPage(context);
                },
              ),
            ),
          ),
        ]);
  }

  Widget formOneBuilder(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
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
        Padding(
          padding: EdgeInsets.only(right: 40.0, left: 40.0),
          child: Text('Hora de darle una imágen a tu negocio.',
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w800,
                  color: AssetColors.red)),
        ),
        Padding(
          padding: EdgeInsets.all(5.0),
          child: Text('¿Cómo se va a llamar?',
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w800,
                  color: AssetColors.red)),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1.5,
          height: MediaQuery.of(context).size.width / 8,
          child: Material(
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white, width: 0.0),
                borderRadius: BorderRadius.circular(20.0)),
            elevation: 5,
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  hintText: 'Ejem: Mi súper tienda', border: InputBorder.none),
            ),
          ),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width / 3,
                child: RaisedButton(
                  elevation: 5,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Text(
                    'Anterior',
                    style: TextStyle(
                        fontSize: 20,
                        color: AssetColors.red,
                        fontWeight: FontWeight.w800),
                  ),
                  onPressed: () {
                    previousPage(context);
                  },
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 3,
                child: RaisedButton(
                  elevation: 5,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Text(
                    'Siguiente',
                    style: TextStyle(
                        fontSize: 20,
                        color: AssetColors.red,
                        fontWeight: FontWeight.w800),
                  ),
                  onPressed: () {
                    nextPage(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget formTwoBuilder(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
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
          width: MediaQuery.of(context).size.width / 2,
          child: Center(
            child: Text('¿Dónde se encuentra?',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w800,
                    color: AssetColors.red)),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1.1,
          height: MediaQuery.of(context).size.height / 2,
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                      padding: EdgeInsets.all(5.0),
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
                      padding: EdgeInsets.all(5.0),
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
                      padding: EdgeInsets.all(5.0),
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
                      padding: EdgeInsets.all(5.0),
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
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'Estado',
                        style: TextStyle(
                            fontSize: 20,
                            color: AssetColors.red,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
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
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width / 3,
                child: RaisedButton(
                  elevation: 5,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Text(
                    'Anterior',
                    style: TextStyle(
                        fontSize: 20,
                        color: AssetColors.red,
                        fontWeight: FontWeight.w800),
                  ),
                  onPressed: () {
                    previousPage(context);
                  },
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 3,
                child: RaisedButton(
                  elevation: 5,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Text(
                    'Siguiente',
                    style: TextStyle(
                        fontSize: 20,
                        color: AssetColors.red,
                        fontWeight: FontWeight.w800),
                  ),
                  onPressed: () {
                    nextPage(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget formThreeBuilder(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
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
          width: MediaQuery.of(context).size.width / 1.5,
          child: Center(
            child: Text('¿Ofreces servicio a domicilio?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w800,
                    color: AssetColors.red)),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1.1,
          height: MediaQuery.of(context).size.height / 3,
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Switch(
                  onChanged: (bool value) {
                    print(value);
                    setState(() {
                      _delivery = !_delivery;
                    });
                  },
                  value: _delivery,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Distancia',
                        style: TextStyle(
                            fontSize: 20,
                            color: AssetColors.red,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
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
                        'Costo',
                        style: TextStyle(
                            fontSize: 20,
                            color: AssetColors.red,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
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
              ],
            ),
          ),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width / 3,
                child: RaisedButton(
                  elevation: 5,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Text(
                    'Anterior',
                    style: TextStyle(
                        fontSize: 20,
                        color: AssetColors.red,
                        fontWeight: FontWeight.w800),
                  ),
                  onPressed: () {
                    previousPage(context);
                  },
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 3,
                child: RaisedButton(
                  elevation: 5,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Text(
                    'Siguiente',
                    style: TextStyle(
                        fontSize: 20,
                        color: AssetColors.red,
                        fontWeight: FontWeight.w800),
                  ),
                  onPressed: () {
                    nextPage(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget formFourBuilder(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
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
          width: MediaQuery.of(context).size.width / 1.1,
          child: Center(
            child: Text('¿Cómo te pueden contactar?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w800,
                    color: AssetColors.red)),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1.1,
          height: MediaQuery.of(context).size.height / 2,
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'WhatsApp',
                        style: TextStyle(
                            fontSize: 20,
                            color: AssetColors.red,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
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
                                prefixIcon: Icon(Icons.chat_bubble),
                                hintText: 'Ingresar',
                                border: InputBorder.none),
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
                        'Facebook',
                        style: TextStyle(
                            fontSize: 20,
                            color: AssetColors.red,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
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
                                prefixIcon: Icon(Icons.face),
                                hintText: 'Ingresar',
                                border: InputBorder.none),
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
                        'Teléfono',
                        style: TextStyle(
                            fontSize: 20,
                            color: AssetColors.red,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
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
                                prefixIcon: Icon(Icons.phone),
                                hintText: 'Ingresar',
                                border: InputBorder.none),
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
                        'Correo',
                        style: TextStyle(
                            fontSize: 20,
                            color: AssetColors.red,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
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
                                prefixIcon: Icon(Icons.mail),
                                hintText: 'Ingresar',
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width / 1.5,
            height: MediaQuery.of(context).size.height / 8,
            child: RaisedButton(
              elevation: 5,
              color: AssetColors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(500.0))),
              child: Text(
                'Crear negocio',
                style: TextStyle(
                    fontSize: 30,
                    color: AssetColors.white,
                    fontWeight: FontWeight.w800),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => BusinessType()));
              },
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (_stepNumber) {
      case 1:
        return Form(
          // onWillPop: (){
          //   return Navigator.maybePop(context);
          // },
          key: _formKey,
          child: this.formStartBuilder(context),
        );
        break;

      case 2:
        return Form(
          key: _formKey,
          child: this.formOneBuilder(context),
        );
        break;

      case 3:
        return Form(
          key: _formKey,
          child: this.formTwoBuilder(context),
        );
        break;

      case 4:
        return Form(
          key: _formKey,
          child: this.formThreeBuilder(context),
        );
        break;

      case 5:
        return Form(
          key: _formKey,
          child: this.formFourBuilder(context),
        );
        break;
    }
  }
}
