import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterecommerceui/view/forgot_password.dart';
import 'package:flutterecommerceui/view/sign_up.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int rowIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 10),
        child: Column(
          children: [
            rowElement(context),
            Container(
                height: MediaQuery.of(context).size.height * 0.22,
                width: MediaQuery.of(context).size.width - 20,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Icon(
                            Icons.account_circle,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width - 70,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: "USERNAME / EMAIL"),
                            )),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Icon(
                            Icons.lock,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width - 70,
                            child: TextField(
                              decoration:
                                  InputDecoration(labelText: "PASSWORD"),
                            )),
                      ],
                    ),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            ButtonTheme(
              shape: StadiumBorder(),
              minWidth: double.infinity,
              child: RaisedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(""),
                    Text(
                      "LOG IN",
                      style: TextStyle(color: Colors.white),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFFFF6969),
                        ),
                      ),
                    ),
                  ],
                ),
                onPressed: () {},
                color: Color(0xFFFF6969),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Don’t have an account? Swipe right to"),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUp(),
                      ));
                },
                child: Text(
                  " create a new account.",
                  style: TextStyle(color: Color(0xFFFF6969)),
                ))
          ],
        ),
      )),
    );
  }

  Container rowElement(BuildContext context) {
    return Container(
      // color: Colors.green,
      height: MediaQuery.of(context).size.height * 0.06,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          InkWell(
            onTap: () {},
            child: Text(
              "Log In",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 40,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForgotPassword(),
                  ));
            },
            child: Text(
              "Forgot Password",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 40,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUp(),
                  ));
            },
            child: Text(
              "Sign Un",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
