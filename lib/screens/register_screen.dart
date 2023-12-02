import 'package:flutter/material.dart';
import 'login_screen.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: EdgeInsets.only(left: 16, right: 16),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.13,
            ),
            Image.asset('assets/images/blue_Icon.png'),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.019,
            ),
            Text(
              'Let’s Get Started',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xff223263),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.009,
            ),
            Text(
              'Create an new account',
              style: TextStyle(color: Color(0xff9098B1), fontSize: 12),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Full Name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person_outline)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.009,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Your Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email_outlined)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.009,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock_outline)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.009,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Password Again',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock_outline)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.009,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Sign Up'),
              style: ElevatedButton.styleFrom(
                fixedSize: Size((MediaQuery.of(context).size.width), 48),
                backgroundColor: Color(0xff40BFFF),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "have a acccount?",
                    style: TextStyle(color: Color(0xff9098b1)),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        color: Color(0xff40bfff),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
