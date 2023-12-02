import 'package:flutter/material.dart';
import 'register_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   elevation: 0,
        // ),
        body: Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              Image.asset(
                'assets/images/blue_Icon.png',
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.height * 0.08,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                'Welcome to Lafyuu',
                style: TextStyle(
                  color: Color(0xff223263),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.009,
              ),
              Text(
                'Sign in to continue',
                style: TextStyle(color: Color(0xff9098B1), fontSize: 12),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.034,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Your Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email_outlined),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Sign In'),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size((MediaQuery.of(context).size.width), 48)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 130,
                    height: 1,
                    color: Colors.grey,
                  ),
                  Text(
                    'OR',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Container(
                    width: 130,
                    height: 1,
                    color: Colors.grey,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              OutlinedButton.icon(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/Google icon.png',
                  height: 16,
                  width: 16,
                ),
                label: Center(child: Text('Login with Google')),
                style: OutlinedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width,
                        MediaQuery.of(context).size.height * 0.070)),
              ),
              // SizedBox(height: MediaQuery.of(context).size.height*0.0009,),

              OutlinedButton.icon(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/facebook icon.png',
                  height: 16,
                  width: 16,
                ),
                label: Center(child: Text('Login with Facebook')),
                style: OutlinedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width,
                        MediaQuery.of(context).size.height * 0.070)),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Color(0xff40BFFF),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "don't have a acccount?",
                    style: TextStyle(color: Color(0xff9098b1)),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()));
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Color(0xff40bfff),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
