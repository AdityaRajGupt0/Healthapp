import 'package:flutter/material.dart';

import 'Log In.dart';

class SignUpPage extends StatefulWidget {
  // var userName;
  //
  // SignUpPage(String userName) {
  //   this.userName = userName;
  // }

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool changeObscureText = true;

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordControllers = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // title: Text(widget.userName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
                child: Text('Sign Up',
                    style: TextStyle(fontSize: 25, color: Colors.blue))),
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                contentPadding:
                EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
                prefixIcon:
                Image.asset('assets/user.png', width: 20, height: 20),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.blue)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.blue, width: 1)),
                hintText: 'Username',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                contentPadding:
                EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
                prefixIcon:
                Image.asset('assets/email.png', width: 20, height: 20),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.blue)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.blue, width: 1)),
                hintText: 'Email',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                contentPadding:
                EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
                prefixIcon:
                Image.asset('assets/phone.png', width: 20, height: 20),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.blue)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.blue, width: 1)),
                hintText: 'Phone no.',
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
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: passwordControllers,
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
                hintText: 'Confirm Password',
              ),
            ),
            SizedBox(height: 40),
            TextButton(
              onPressed: () {},
              child: Text('Sign Up',
                  style: TextStyle(fontSize: 18, color: Colors.white)),
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                padding:
                const EdgeInsets.symmetric(horizontal: 155, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }));
                }
              },
              child: const Text(
                "Already have an account? Log In",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}