import 'package:flutter/material.dart';

class ShopDetails extends StatefulWidget {
  @override
  ShopDetailsState createState() => ShopDetailsState();
}

String city = "Vallabh Vidhyanagar";
String catagory = "General Store";

class ShopDetailsState extends State<ShopDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        body: new Stack(
      children: <Widget>[
        new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/LoginShop.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        new Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/logo.png",
                    width: 150,
                  ),

                  Padding(padding: EdgeInsets.all(20)),

                  // new Text(

                  //   "Suchi",

                  //   style: TextStyle(

                  //       fontSize: 40,

                  //       fontWeight: FontWeight.bold,

                  //       color: Color(0xFFff4500),

                  //       fontStyle: FontStyle.italic),

                  // ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.10,
                      child: TextField(
                        // keyboardType: TextInputType.phone,
                        decoration: new InputDecoration(
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(10.0),
                              ),
                            ),
                            filled: true,
                            hintStyle: new TextStyle(color: Colors.grey[800]),
                            hintText: "Business name",
                            fillColor: Colors.white70),
                        onChanged: (text) {},
                      ),
                    ),
                  ),
                  // Padding(padding: EdgeInsets.all(8)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Colors.white70,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButton<String>(
                            value: city,
                            icon: Icon(Icons.arrow_downward),
                            iconSize: 24,
                            elevation: 16,
                            style:
                                // TextStyle(color: Theme.of(context).primaryColor),
                                TextStyle(color: Colors.black),
                            // underline: Container(
                            //   height: 2,
                            //   color: Theme.of(context).primaryColor,
                            // ),
                            // dropdownColor: Colors.white70,
                            onChanged: (String newValue) {
                              setState(() {
                                city = newValue;
                              });
                            },
                            items: <String>[
                              'Vallabh Vidhyanagar',
                              'Anand',
                              'Bakrol',
                              'Borsad',
                              'Karamsad'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.10,
                      child: TextField(
                        maxLines: null,
                        // keyboardType: TextInputType.phone,
                        decoration: new InputDecoration(
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(10.0),
                              ),
                            ),
                            filled: true,
                            hintStyle: new TextStyle(color: Colors.grey[800]),
                            hintText: "Adress",
                            fillColor: Colors.white70),
                        onChanged: (text) {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Colors.white70,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButton<String>(
                            value: catagory,
                            icon: Icon(Icons.arrow_downward),
                            iconSize: 24,
                            elevation: 16,
                            style:
                                // TextStyle(color: Theme.of(context).primaryColor),
                                TextStyle(color: Colors.black),
                            // underline: Container(
                            //   height: 2,
                            //   color: Theme.of(context).primaryColor,
                            // ),
                            // dropdownColor: Colors.white70,
                            onChanged: (String newValue) {
                              setState(() {
                                catagory = newValue;
                              });
                            },
                            items: <String>[
                              'General Store',
                              'Stationary',
                              'Nasta House',
                              'Cafe/Restaurant',
                              'Bakery',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Container(
                  //     width: MediaQuery.of(context).size.width / 1.10,
                  //     child: TextField(
                  //       // obscureText: true,
                  //       decoration: new InputDecoration(
                  //           border: new OutlineInputBorder(
                  //             borderRadius: const BorderRadius.all(
                  //               const Radius.circular(10.0),
                  //             ),
                  //           ),
                  //           filled: true,
                  //           hintStyle: new TextStyle(color: Colors.grey[800]),
                  //           hintText: "Password",
                  //           fillColor: Colors.white70),
                  //       onChanged: (text) {},
                  //     ),
                  //   ),
                  // ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.10,
                      child: TextField(
                        // obscureText: true,
                        decoration: new InputDecoration(
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(10.0),
                              ),
                            ),
                            filled: true,
                            hintStyle: new TextStyle(color: Colors.grey[800]),
                            hintText: "E-Mail",
                            fillColor: Colors.white70),
                        onChanged: (text) {},
                      ),
                    ),
                  ),

                  OutlineButton(
                    onPressed: () {
                      // Navigator.push(context,

                      //     MaterialPageRoute(builder: (context) => ShopDetails()));
                    },

                    child: Text(
                      "Register",
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),

                    // color: Theme.of(context).primaryColor,

                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),

                    borderSide:
                        BorderSide(color: Theme.of(context).primaryColor),
                  ),

                  // Padding(

                  //   padding: const EdgeInsets.all(8.0),

                  //   child: Row(

                  //     mainAxisAlignment: MainAxisAlignment.center,

                  //     children: [

                  //       Text(

                  //         "New to suchi seller?",

                  //         style: TextStyle(color: Theme.of(context).primaryColor),

                  //       ),

                  //       FlatButton(

                  //         onPressed: () {},

                  //         child: Text(

                  //           "Sign Up",

                  //           style: TextStyle(color: Colors.blueAccent),

                  //         ),

                  //       )

                  //     ],

                  //   ),

                  // ),
                ],
              ),
            ],
          ),
        )
      ],
    ));
  }
}
