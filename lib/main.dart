import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8A2BE2),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),

            Image.asset(
              'assets/GraphicsGurujiLogo.png',
              width: 300,
              height: 120,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 10),
            
            Text(
              "Learn Graphic and UI/UX designing in Hindi\nfor free with live projects.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            SizedBox(height: 40),
            
            TextField(
              decoration: InputDecoration(
                hintText: "Email Address",
                hintStyle: TextStyle(
                  color: Colors.black.withOpacity(0.5)
                ),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Opacity(
                  opacity: 0.5,
                  child: Icon(Icons.email_outlined),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(
                  color: Colors.black.withOpacity(0.5)
                ),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Opacity(
                  opacity: 0.5,
                  child: Icon(Icons.lock_outline),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26.0),
                  ),
                ),
                onPressed: () {},
                child: Text("LOGIN",
                style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 10),
            
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot Password?",
                style: TextStyle(color: Colors.orange),
              ),
            ),
            SizedBox(height: 20),
            
            Text(
              "or login with",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset('assets/gmail.png', width: 40, height: 40),
                  onPressed: () {},
                ),
                IconButton(
                   icon: Image.asset('assets/facebook.png', width: 40, height: 40),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset('assets/twitter.png', width: 40, height: 40),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 20),
            
            RichText(
              text: TextSpan(
                text: "Don't have an account? ",
                style: TextStyle(color: Colors.white),
                children: [
                  TextSpan(
                    text: "Register now",
                    style: TextStyle(
                      color: Colors.orange,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            
            Text(
              "By signing up, you agree with our ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            Text(
              "Terms & Conditions",
              style: TextStyle(
                color: Colors.orange,
                decoration: TextDecoration.underline,
                decorationColor: Colors.orange,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
