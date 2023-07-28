import 'package:flutter/material.dart';

import 'Sign Up.dart';
import 'dashboard.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeObscureText = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              //1st item of column
              Center(child: Image.asset('assets/logo.png', scale: 1)),
              //Giving space between logo and text
              const SizedBox(
                height: 20,
              ),
              //Space
              const Text('Log In',
                  style: TextStyle(fontSize: 25, color: Colors.blue)),

              SizedBox(height: 20),

              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
                  prefixIcon:
                      Image.asset('assets/user.png', width: 20, height: 20),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.blue, width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.blue, width: 1)),
                  hintText: 'Username',
                ),
              ),
              SizedBox(
                height: 10,
              ),

              TextField(
                controller: passwordController,
                obscureText: changeObscureText,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
                  prefixIcon:
                      Image.asset('assets/lock.png', width: 20, height: 20),
                  suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          changeObscureText = !changeObscureText;
                        });
                      },
                      child: Image.asset('assets/view.png')),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.blue)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.blue, width: 1)),
                  hintText: 'Password',
                ),
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Text('Forget Password?'),
              ),

              SizedBox(height: 40),
              TextButton(
                onPressed: () {
                  // if (emailController.text == 'shahaditya664@@gmail.com' &&
                  //     passwordController.text == '11') {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DashBoardPage('Texas');
                  }));
                  // } else {
                  //   final snackBar = SnackBar(
                  //       content: Text('e-mail or password is incorrect'),
                  //       action:
                  //           SnackBarAction(label: "undo", onPressed: () {}));
                  //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  // }
                },
                child: Text('Log In',
                    style: TextStyle(fontSize: 18, color: Colors.white)),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 155, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              SizedBox(height: 20),

              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignUpPage();
                  }));
                },
                child: const Text(
                  "Don't have an account? Sign Up",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
