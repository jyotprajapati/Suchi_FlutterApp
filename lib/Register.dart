import 'package:flutter/material.dart';
import 'package:suchi/ShopDetails.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                    child: Row(
                      children: [
                        Flexible(
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: TextField(
                                  keyboardType: TextInputType.phone,
                                  decoration: new InputDecoration(
                                      border: new OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      filled: true,
                                      hintStyle: new TextStyle(
                                          color: Colors.grey[800]),
                                      hintText: "First Name",
                                      fillColor: Colors.white70),
                                  onChanged: (text) {},
                                ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: TextField(
                                  keyboardType: TextInputType.phone,
                                  decoration: new InputDecoration(
                                      border: new OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      filled: true,
                                      hintStyle: new TextStyle(
                                          color: Colors.grey[800]),
                                      hintText: "Last Name",
                                      fillColor: Colors.white70),
                                  onChanged: (text) {},
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.10,
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        decoration: new InputDecoration(
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(10.0),
                              ),
                            ),
                            filled: true,
                            hintStyle: new TextStyle(color: Colors.grey[800]),
                            hintText: "Phone number",
                            fillColor: Colors.white70),
                        onChanged: (text) {},
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.10,
                      child: TextField(
                        obscureText: true,
                        decoration: new InputDecoration(
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(10.0),
                              ),
                            ),
                            filled: true,
                            hintStyle: new TextStyle(color: Colors.grey[800]),
                            hintText: "Password",
                            fillColor: Colors.white70),
                        onChanged: (text) {},
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.10,
                      child: TextField(
                        obscureText: true,
                        decoration: new InputDecoration(
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(10.0),
                              ),
                            ),
                            filled: true,
                            hintStyle: new TextStyle(color: Colors.grey[800]),
                            hintText: "Confirm Password",
                            fillColor: Colors.white70),
                        onChanged: (text) {},
                      ),
                    ),
                  ),

                  OutlineButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShopDetails()));
                    },

                    child: Text(
                      "Next",
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
