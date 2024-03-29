import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Registration'),
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
                new Container(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: new TextFormField(
                        keyboardType: TextInputType.emailAddress, // Use email input type for emails.
                        decoration: new InputDecoration(
                            hintText: 'you@example.com',
                            labelText: 'E-mail Address',
                            icon: new Icon(Icons.email))

                    )
                ),
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
                new Container(
                  padding: const EdgeInsets.only(top:10.0),
                  child:  new TextFormField(
                      obscureText: true, // Use secure text for passwords.
                      decoration: new InputDecoration(
                          hintText: 'Confirm Password',
                          labelText: 'Enter your confirm password',
                          icon: new Icon(Icons.lock)

                      )
                  ),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Container(
                      height:50.0,
                      width: 210.0,
                      margin: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 40.0),
                      child: new RaisedButton(
                        child: new Text(
                          'Register',
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
