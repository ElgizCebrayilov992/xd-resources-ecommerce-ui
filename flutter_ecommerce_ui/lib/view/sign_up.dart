import 'package:flutter/material.dart';
import 'package:flutterecommerceui/view/forgot_password.dart';
import 'package:flutterecommerceui/view/login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                height: MediaQuery.of(context).size.height * 0.30,
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
                            Icons.mail,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width - 70,
                            child: TextField(
                              decoration: InputDecoration(labelText: "EMAIL"),
                            )),
                      ],
                    ),
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
                      "SIGN UP",
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
            Text("By creating an account, you agree to our"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              //  mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Terms of Service",
                    style: TextStyle(color: Color(0xFFFF6969)),
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Text("and"),
                SizedBox(
                  width: 3,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Privacy Policy",
                    style: TextStyle(color: Color(0xFFFF6969)),
                  ),
                ),
              ],
            )
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
              "Sign Un",
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
                    builder: (context) => Login(),
                  ));
            },
            child: Text(
              "Log In",
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
        ],
      ),
    );
  }
}
