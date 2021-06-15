import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wema Alat App Login Page',
      home: MyHomePage(title: 'ALAT App Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 30, left: 20),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_outlined),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 30, bottom: 20),
            alignment: Alignment.topLeft,
            child: Text(
              "Forgot Password?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, bottom: 30),
            alignment: Alignment.topLeft,
            child: Text(
              "Enter your registered email address or username",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 30,
            ),
            alignment: Alignment.topLeft,
            child: Text(
              "Email address/username",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red.shade900),
                ),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 20, left: 30, right: 30),
              color: Colors.redAccent,
              height: 50,
              alignment: Alignment.center,
              child: TextButton(
                  child: Text("Next",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  onPressed: () {})),
        ],
      ),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isHidden = true;
  var email = "akeemtobi@wema.com";
  var password = "hellooo";

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 30, left: 20),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_outlined),
              onPressed: () {},
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 100,
            width: 300,
            margin: EdgeInsets.only(top: 30, bottom: 0),
            padding: EdgeInsets.all(0),
            child: Image(
              width: 400,
              image: AssetImage("assets/logo.png"),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Welcome Back!",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 30),
            alignment: Alignment.topLeft,
            child: Text(
              "Email Address",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red.shade900),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 30),
            alignment: Alignment.topLeft,
            child: Text(
              "Password",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30),
            child: TextField(
              obscureText: _isHidden,
              decoration: InputDecoration(
                suffixIcon: InkWell(
                  onTap: _togglePasswordView,
                  child: Icon(
                    _isHidden ? Icons.visibility : Icons.visibility_off,
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red.shade900),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 10, right: 30),
            child: TextButton(
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.red.shade700),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ForgotPasswordPage()),
                  );
                }),
          ),
          Container(
              margin: EdgeInsets.only(top: 20, left: 50, right: 50),
              color: Colors.redAccent,
              height: 50,
              alignment: Alignment.center,
              child: TextButton(
                child: Text("Log in",
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                onPressed: () {},
              )),
          Container(
            margin: EdgeInsets.only(top: 20, left: 30),
            alignment: Alignment.centerLeft,
            child: Text("Unable to Log in? Kindly Sign Up if;"),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 30),
            alignment: Alignment.centerLeft,
            child: Text('- You are new to WEMA and ALAT.'),
          ),
          Container(
            margin: EdgeInsets.only(top: 5, left: 30),
            alignment: Alignment.centerLeft,
            child: Text('- You are new to ALAT and have a WEMA account.'),
          ),
          Container(
            margin: EdgeInsets.only(top: 5, left: 30),
            alignment: Alignment.centerLeft,
            child: Text('- You are new to ALAT and have a WEMA Mobile.'),
          ),
        ],
      ),
    );
  }
}
