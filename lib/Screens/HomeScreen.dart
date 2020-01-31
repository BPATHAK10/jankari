import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Scaffold(
            backgroundColor: Colors.teal,
            body: DropdownMenu()
          ),
        )
      ],
    );
  }
}

class DropdownMenu extends StatefulWidget {
  @override
  _DropdownMenuState createState() => _DropdownMenuState();
}

class _DropdownMenuState extends State<DropdownMenu> {
  String _value;

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('Assets/images/logo.PNG'),
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.topCenter
                    )
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top:350),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white
                  ),
                  ),
            )
            ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 400),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.teal[200],
            ),
            child: DropdownButton<String>(
              items: [
                DropdownMenuItem<String>(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.filter_1),
                      Text('Pulchowk To Putalisadak'),
                    ],
                  ),
                  value: 'one',
                ),
                DropdownMenuItem<String>(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.filter_2),
                      Text('Manamaiju To Balaju'),
                    ],
                  ),
                  value: 'two',
                ),

              ],
              isExpanded: false,
              onChanged: (String value) {
                switch(value){
                  case 'one':
                    Navigator.of(context).pushNamed("/Map");
                    break;
                }

                setState(() {
                  _value = value;
                });
              },
              hint: Center(child: Text('Select Your Route')),
              value: _value,
              underline: Container(
                decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey))
                ),
              ),
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
              iconEnabledColor: Colors.pink,
              //        iconDisabledColor: Colors.grey,
              iconSize: 40,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: MaterialButton(
              onPressed: (){
                Navigator.of(context).pushNamed("/SignInPage");
              },//since this is only a UI app
              child: Text('SIGN IN',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'SignInPage',
                  fontWeight: FontWeight.bold,
                ),
              ),
              color: Color(0xffff2d55),
              elevation: 0,
              minWidth: 400,
              height: 50,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
            ),
          ),
    ],
    );
  }
}