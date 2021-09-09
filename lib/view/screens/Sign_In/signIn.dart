import 'package:flutter/material.dart';
import 'package:mohammad/helper/clipper/sign_in_clipper.dart';
import 'package:mohammad/helper/size.dart';
import 'package:mohammad/model/api_services.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  ApiAuthentication _auth = ApiAuthentication();
  String? email;
  String? password;
  void signIn() async {
    await _auth
        .signInPostRequest(context: context, email: email, password: password)
        .then((value) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(value),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: ScreenSize(context: context).getProportionateScreenHeight(813),
            color: Colors.white,
            child: Stack(
              children: [
                ClipPath(
                  clipper: SignInClipperOne(),
                  child: Container(
                    color: Colors.blue[300],
                    height: ScreenSize(context: context).getProportionateScreenHeight(470),
                    width: double.infinity,
                  ),
                ),
                ClipPath(
                  clipper: SignInClipperTwo(),
                  child: Container(
                    color: Colors.indigo[900],
                    height: ScreenSize(context: context).getProportionateScreenHeight(400),
                    width: double.infinity,
                  ),
                ),
                ClipPath(
                  clipper: SignInClipperThree(),
                  child: Container(
                    color: Colors.pink[400],
                    height: ScreenSize(context: context).getProportionateScreenHeight(400),
                    width: double.infinity,
                  ),
                ),
                Positioned(
                  right: ScreenSize(context: context).getProportionateScreenWidth(28),
                  bottom: ScreenSize(context: context).getProportionateScreenHeight(100),
                  child: CircleAvatar(
                    radius: ScreenSize(context: context).getProportionateScreenHeight(42),
                    backgroundColor: Colors.amber[100],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: ScreenSize(context: context).getProportionateScreenHeight(140), left: ScreenSize(context: context).getProportionateScreenWidth(30), right: ScreenSize(context: context).getProportionateScreenWidth(30)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello',
                        style: TextStyle(
                            fontSize: ScreenSize(context: context).getProportionateScreenWidth(43),
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Again!',
                        style: TextStyle(
                            fontSize: ScreenSize(context: context).getProportionateScreenWidth(43),
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: ScreenSize(context: context).getProportionateScreenHeight(215),
                      ),
                      Container(
                        width: double.infinity,
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (newValue) => email = newValue,
                          onSubmitted: (newValue) => email = newValue,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            hintText: "Email",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenSize(context: context).getProportionateScreenHeight(38),
                      ),
                      Container(
                        width: double.infinity,
                        child: TextField(
                          obscureText: true,
                          onChanged: (newValue) => password = newValue,
                          onSubmitted: (newValue) => password = newValue,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            hintText: "Password",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenSize(context: context).getProportionateScreenHeight(28),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: ScreenSize(context: context).getProportionateScreenWidth(35),
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              signIn();
                            },
                          ),
                          SizedBox(
                            width: ScreenSize(context: context).getProportionateScreenHeight(28),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: ScreenSize(context: context).getProportionateScreenHeight(20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed('\SignUpScreen');
                            },
                            child: Text(
                              'Register',
                              style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.underline,
                                  fontSize: ScreenSize(context: context).getProportionateScreenWidth(18),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              // Since i don't have a password reset Api Url, so this onTap will do nothing
                            },
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.underline,
                                  fontSize: ScreenSize(context: context).getProportionateScreenWidth(18),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
