//import 'package:flutter/material.dart';
//
//class SignInOne extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      child: Stack(
//        children: <Widget>[
//          Padding(
//            padding: const EdgeInsets.all(2),
//            child: Container(
//              decoration: BoxDecoration(
//                  image: DecorationImage(
//                      image: AssetImage('Assets/images/logo.PNG'),
//                      fit: BoxFit.fitWidth,
//                      alignment: Alignment.topCenter
//                  )
//              ),
//            )
//          ),
//          Container(
//            width: MediaQuery.of(context).size.width,
//            margin: EdgeInsets.only(top: 340),
//            decoration: BoxDecoration(
//              borderRadius: BorderRadius.circular(30),
//              color: Colors.teal[200],
//            ),
//            child: Padding(
//              padding: EdgeInsets.all(23),
//              child: ListView(
//                children: <Widget>[
//                  Padding(
//                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
//                    child: Container(
//                      color: Color(0xfff5f5f5),
//                      child: Container(
//                        child: TextFormField(
//                          style: TextStyle(
//                            color: Colors.black,
//                            fontFamily: 'SignInPage'
//                          ),
//                          decoration: InputDecoration(
//                            border: OutlineInputBorder(),
//                            labelText: 'Username',
//                            prefixIcon: Icon(Icons.person_outline),
//                            labelStyle: TextStyle(
//                              fontSize: 15
//                            )
//                          ),
//                        ),
//                      ),
//                    ),
//                  ),
//                  Container(
//                    color: Color(0xfff5f5f5),
//                    child: TextFormField(
//                      obscureText: true,
//                      style: TextStyle(
//                        color: Colors.black,
//                        fontFamily: 'SignInPage'
//                      ),
//                      decoration: InputDecoration(
//                        border: OutlineInputBorder(),
//                        labelText: 'Password',
//                        prefixIcon: Icon(Icons.lock_outline),
//                        labelStyle: TextStyle(
//                            fontSize: 15
//                          )
//                      ),
//                    ),
//                  ),
//                  Padding(
//                    padding: EdgeInsets.only(top: 20),
//                    child: MaterialButton(
//                      onPressed: (){
//                        Navigator.of(context).pushNamed("/MainScreen");
//                      },//since this is only a UI app
//                      child: Text('SIGN IN',
//                      style: TextStyle(
//                        fontSize: 15,
//                        fontFamily: 'SignInPage',
//                        fontWeight: FontWeight.bold,
//                      ),
//                      ),
//                      color: Color(0xffff2d55),
//                      elevation: 0,
//                      minWidth: 400,
//                      height: 50,
//                      textColor: Colors.white,
//                      shape: RoundedRectangleBorder(
//                        borderRadius: BorderRadius.circular(10)
//                      ),
//                    ),
//                  ),
//
//
////                Padding(
////                  padding: EdgeInsets.only(top: 20),
////                  child: Center(
////                    child: Text('Forgot your password?',
////                    style: TextStyle(
////                      fontFamily: 'SignInPage',
////                      fontSize: 15,
////                      fontWeight: FontWeight.bold
////                    ),
////                    ),
////                  ),
////                ),
//                  Padding(
//                    padding: EdgeInsets.only(top: 30),
//                    child: MaterialButton(
//                      onPressed:() {
//                        Navigator.of(context).pushNamed("/Registration");
//                      },
//                      child: Center(
//                        child: RichText(
//                          text: TextSpan(
//                            children: [
//                              TextSpan(
//                                text: "Don't have an account?",
//                                style: TextStyle(
//                                  fontFamily: 'SignInPage',
//                                  color: Colors.black,
//                                  fontSize: 15,
//                                )
//                              ),
//                              TextSpan(
//                                text: "sign up",
//                                style: TextStyle(
//                                  fontFamily: 'SignInPage',
//                                  color: Color(0xffff2d55),
//                                  fontSize: 15,
//                                )
//                              )
//                            ]
//                          ),
//                        ),
//                      ),
//                    ),
//                  )
//                ],
//              ),
//            ),
//          )
//        ],
//      ),
//    );
//  }
//}

import 'package:flutter/material.dart';

class SignInOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Sign In'),
        backgroundColor: Colors.teal[200],
      ),
      body: new Container(
          padding: new EdgeInsets.all(20.0),

          child: new Form(
            child: new ListView(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.all(10.0),
                    child: ClipRect(
                        child: Image(
                            image: AssetImage('Assets/images/logo.PNG')
                        )
                    )

                ),

                new Container(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: new TextFormField(
                        keyboardType: TextInputType.text, // Use email input type for emails.
                        decoration: new InputDecoration(
                          hintText: 'User Name',
                          labelText: 'Enter your user name',
                          icon: new Icon(Icons.person),
                        )

                    )
                ),
//                new Container(
//                    padding: const EdgeInsets.only(top: 10.0),
//                    child: new TextFormField(
//                        keyboardType: TextInputType.emailAddress, // Use email input type for emails.
//                        decoration: new InputDecoration(
//                            hintText: 'you@example.com',
//                            labelText: 'E-mail Address',
//                            icon: new Icon(Icons.email))
//
//                    )
//                ),
                new Container(
                  padding: const EdgeInsets.only(top:10.0),
                  child:  new TextFormField(
                      obscureText: true, // Use secure text for passwords.
                      decoration: new InputDecoration(
                          hintText: 'Password',
                          labelText: 'Enter your password',
                          icon: new Icon(Icons.lock)

                      )
                  ),
                ),
//                new Container(
//                  padding: const EdgeInsets.only(top:10.0),
//                  child:  new TextFormField(
//                      obscureText: true, // Use secure text for passwords.
//                      decoration: new InputDecoration(
//                          hintText: 'Confirm Password',
//                          labelText: 'Enter your confirm password',
//                          icon: new Icon(Icons.lock)
//
//                      )
//                  ),
//                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Container(
                      height:50.0,
                      width: 210.0,
                      margin: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 40.0),
                      child: new RaisedButton(
                        child: new Text(
                          'Sign In',
                          style: new TextStyle(
                              color: Colors.white
                          ),
                        ),
                        onPressed: (){

                        },
                        color: Colors.deepPurple,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
      ),
    );
  }
}

class HamroLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('Assets/images/logo.PNG'),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter
          )
      ),
    );
  }
}
