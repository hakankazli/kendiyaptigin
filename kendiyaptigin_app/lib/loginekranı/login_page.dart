import 'package:flutter/material.dart';
import 'package:kendiyaptigin_app/loginekranı/homepage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  String username;

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            key: _formKey,
            child:Padding(
              padding: const EdgeInsets.all(8.0),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.lightBlueAccent)),
                        labelText: "Kullanıcı Adı Soyadı",
                        border: OutlineInputBorder()),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Kulanıcı adınızı giriniz";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      username = value;

                    },
                  ),


                  _loginButton()
                ],
              ),
            ))     )    ;
  }
  Widget _loginButton()=>
      RaisedButton(child: Text("giriş yap"),onPressed: (){
        if (_formKey.currentState.validate()){
          _formKey.currentState.save();
          Navigator.push(context, MaterialPageRoute(builder: (context)=>homePage( username: username,),),);

        }
      },
      );
}
