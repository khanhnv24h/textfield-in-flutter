import 'package:flutter/material.dart';
import 'package:text_field/auth/user.dart';

class LoginPageState extends State<LoginPage> {
  final User user = new User();

  @override
  Widget build(BuildContext context) {
    final TextField _txtUserName = new TextField(
      decoration: new InputDecoration(
        hintText: 'Enter your username',
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      keyboardType: TextInputType.text,
      autocorrect: false,
      onChanged: (text){
        setState(() {
          this.user.userName = text;
        });
      },
    );
    final TextField _txtEmail = new TextField(
      decoration: new InputDecoration(
        hintText: 'Enter your Email',
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
      onChanged: (text){
        setState(() {
          this.user.email = text;
        });
      },
    );
    final TextField _txtPassword = new TextField(
      decoration: new InputDecoration(
        hintText: 'Enter your Password',
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      keyboardType: TextInputType.text,
      autocorrect: false,
      obscureText: true,
      onChanged: (text){
        setState(() {
          this.user.passWord = text;
        });
      },//securety your text entry, display ******
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Login Page'),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            margin: new EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
            decoration: new BoxDecoration(
                color: Colors.grey[200],
                border: new Border.all(width: 1.2, color: Colors.black12),
                borderRadius: const BorderRadius.all(const Radius.circular(
                  4.0,
                ))),
            child: _txtUserName,
          ),
          new Container(
            margin: new EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
            decoration: new BoxDecoration(
                color: Colors.grey[200],
                border: new Border.all(width: 1.2, color: Colors.black12),
                borderRadius: const BorderRadius.all(const Radius.circular(
                  4.0,
                ))),
            child: _txtEmail,
          ),
          new Container(
            margin: new EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
            decoration: new BoxDecoration(
                color: Colors.grey[200],
                border: new Border.all(width: 1.2, color: Colors.black12),
                borderRadius: const BorderRadius.all(const Radius.circular(
                  4.0,
                ))),
            child: _txtPassword,
          ),
          new Container(
            margin: new EdgeInsets.only(left: 20.0,right: 20.0),
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: new RaisedButton(
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      child: new Text("Login"),
                      onPressed: () {
                        print('Usename: ${user.userName},'
                          'Password: ${user.passWord}'
                          'Email: ${user.email}'
                        );

                      }),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new LoginPageState();
  }
}
