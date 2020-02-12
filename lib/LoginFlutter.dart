import 'package:flutter/material.dart';

class LoginFlutter extends StatelessWidget{
  Widget createusenameInput(){
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child:TextFormField(
        decoration:
        InputDecoration(hintText:'usename'),
      ),//TextFormField
    );//Padding
  }

  Widget createPasswordInput(){
    return Padding(
      padding: const EdgeInsets.only(top:40),
      child:TextFormField(
        decoration:
        InputDecoration(hintText:'Password'),
        obscureText:true,
      ),//TextFormField
    );//Padding
  }

  Widget createLoginButton(){
    return Container(
        padding: const EdgeInsets.only(top:32),
        child: RaisedButton(
          child:Text('Login'),
          onPressed:(){},
        ));//RaisedButton//Container
  }

  Widget createAccountLink(){
    return Container(
        padding:EdgeInsets.only(top:32),
        child:Text(
          'Register Here',
          textAlign:TextAlign.center,
    ));
  }

  Widget build(BuildContext context){
    return Scaffold(
        body:Container(
          padding:const EdgeInsets.symmetric(horizontal:16),
          decoration:BoxDecoration(color: Colors.white),
          child: ListView(children:[
            Image.asset('assets/images/logo.png',
              height: 300,
            ),//image.asset
            createusenameInput(),
            createPasswordInput(),
            createLoginButton(),
            createAccountLink(),
          ]),
        ),//Container
    );//Scaffold
  }
}