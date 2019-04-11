import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 100;
    return Scaffold(

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/taxi.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode( Colors.black87, BlendMode.darken),
        )
        ),

        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              Padding(
                padding: EdgeInsets.fromLTRB(0, 10 * height, 0, 0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text("GTaxi",
                  style: TextStyle(
                  fontSize: 10 * height,
                  fontFamily: "Poppins",
                  color: Colors.amberAccent
                ),
                ),
              ),
              ),
//              SizedBox(height: MediaQuery.of(context).size.height / 3,),

                 Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
//                    Text("Mobile",
//                    textAlign: TextAlign.start,
//                    style: TextStyle(
//                      color: Colors.white,
//                      fontSize: 13.0,
//                    ),
//
//                    ),

                      Theme(
                        data: new ThemeData(
                          primaryColor: Colors.amberAccent,
                          primaryColorDark: Colors.black,
                          hintColor: Colors.amberAccent
                        ),
                        child: TextFormField(
                            maxLength: 8,
                          decoration: new InputDecoration(
                            helperText: "Input your phone number",
                            suffixIcon: Padding(
                              padding: EdgeInsets.all(0.0),
                              child: Icon(
                                Icons.phone,
                                color: Colors.amberAccent,
                              ), // icon is 48px widget.
                            ),
                            prefixText: "+374  ",
                            contentPadding: new EdgeInsets.symmetric(vertical: 2 * height, horizontal: 10.0),
                            prefixStyle: TextStyle(color: Colors.amberAccent),
                            labelText: "Mobile",
                            hintText: "98123456",
                            hintStyle: TextStyle(
                              color: Colors.amberAccent
                            ),
                            labelStyle: TextStyle(
                              color: Colors.amberAccent
                            ),

                            fillColor: Colors.amberAccent,
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                              borderSide: new BorderSide(
                                color: Colors.amberAccent,
                              ),
                            ),

                            //fillColor: Colors.green
                          ),
                          keyboardType: TextInputType.phone,
                          style: new TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.amberAccent,
                            letterSpacing: 4.0,
                          ),

                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 3 * height),
                        child: SizedBox(
                          width: double.infinity,
                          height: 6.5 * height,
                          child: RaisedButton(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(20.0),
                              side: BorderSide(color: Colors.amberAccent)
                            ),
                            child: const Text('NEXT',
                            style: TextStyle(
                              color: Colors.amberAccent,
                              fontFamily: "Poppins",
                              fontSize: 17.0
                            ),),
                            color: Colors.transparent,
                            elevation: 4.0,
                            splashColor: Colors.orange,
                            onPressed: () {
                              // Perform some action
                            },
                          ),
                        ),
                      ),

                         Padding(
                          padding: EdgeInsets.only(top: 1.5 * height, bottom: 1.5 * height),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("or ",
                                style: TextStyle(
                                  color: Colors.amberAccent,
                                ),
                              ),
                              Text("Sign in",
                                style: TextStyle(
                                  color: Colors.amberAccent,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              Text(" with password",
                                style: TextStyle(
                                  color: Colors.amberAccent,
                                ),
                              ),
                            ],
                          ),
                        ),


                    ],
                  ),


            ],
          ),
        ),
      ),
    );
  }
}
