import 'package:flutter/material.dart';
import 'package:mohammad/helper/clipper/sign_up_clipper.dart';
import 'package:mohammad/helper/size.dart';
import 'package:mohammad/model/api_services.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  ApiAuthentication _auth = ApiAuthentication();
  String? email;
  String? name;
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

    void signUp() async {
    await _auth
        .signUpPostRequest(
            email: email,
            password: password,
            name: name,
            context: context)
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
                  clipper: SignUpClipperOne(),
                  child: Container(
                    color: Colors.blue[300],
                    height: ScreenSize(context: context).getProportionateScreenHeight(705),
                    width: double.infinity,
                  ),
                ),
                ClipPath(
                  clipper: SignUpClipperTwo(),
                  child: Container(
                    color: Colors.indigo[900],
                    height: ScreenSize(context: context).getProportionateScreenHeight(600),
                    width: double.infinity,
                  ),
                ),
                ClipPath(
                  clipper: SignUpClipperThree(),
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
                        'Create',
                        style: TextStyle(
                            fontSize: ScreenSize(context: context).getProportionateScreenWidth(43),
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Account',
                        style: TextStyle(
                            fontSize: ScreenSize(context: context).getProportionateScreenWidth(43),
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: ScreenSize(context: context).getProportionateScreenHeight(50),
                      ),
                      Container(
                        width: double.infinity,
                        child: TextField(
                          keyboardType: TextInputType.name,
                          onSubmitted: (newValue) => name = newValue,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: "Name",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenSize(context: context).getProportionateScreenHeight(38),
                      ),
                      Container(
                        width: double.infinity,
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          onSubmitted: (newValue) => email = newValue,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: "Email",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
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
                          onSubmitted: (newValue) => password = newValue,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: "Password",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenSize(context: context).getProportionateScreenHeight(100),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            child: Text(
                              'Register',
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
                              Navigator.of(context).pushNamed('\SignInScreen');
                            },
                            child: Text(
                              'Login',
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
