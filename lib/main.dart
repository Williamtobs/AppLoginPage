import 'package:flutter/material.dart';

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

class BalanceState extends StatefulWidget {
  @override
  _BalanceDashboard createState() => _BalanceDashboard();
}

class _BalanceDashboard extends State<BalanceState> {
  var balance = "20000";
  var aster = "*****";
  var ext = "";

  bool _isHidden = true;

  void toggleBalanceView() {
    setState(() {
      ext = balance;
      balance = aster;
      aster = ext;
    });
    _isHidden = !_isHidden;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
          margin: EdgeInsets.only(left: 70, top: 15, bottom: 30),
          alignment: Alignment.topLeft,
          child: Row(
            children: [
              Expanded(child: Text("Hi, Tobi")),
              Spacer(),
              Expanded(
                  child: Icon(
                Icons.notifications_none_outlined,
              )),
            ],
          )),
      Container(
          margin: EdgeInsets.only(left: 15, right: 20, bottom: 10),
          alignment: Alignment.topLeft,
          child: Row(
            children: [
              Expanded(
                  flex: 8,
                  child: Text(
                    "Account(s)",
                    style: TextStyle(color: Colors.red),
                  )),
              Expanded(
                  child: Icon(
                Icons.arrow_back_outlined,
                color: Colors.redAccent,
              )),
              Expanded(
                  child: Text("Swipe",
                      style: TextStyle(
                        color: Colors.red,
                      )))
            ],
          )),
      Container(
        margin: EdgeInsets.only(left: 20, right: 25),
        padding: EdgeInsets.only(top: 15, left: 10),
        color: Colors.redAccent[700],
        child: Column(children: [
          Row(
            children: [
              Expanded(
                  flex: 6,
                  child: Text(
                    "Balance",
                    style: TextStyle(color: Colors.white),
                  )),
              Spacer(),
              Expanded(
                  child: Text(
                "Status",
                style: TextStyle(color: Colors.white),
              )),
            ],
          ),
          Padding(padding: EdgeInsets.only(bottom: 10)),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(right: 0),
                  child: Visibility(
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child: Text(
                      balance,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )),
              Container(
                  margin: EdgeInsets.only(left: 0),
                  child: IconButton(
                    icon: Icon(
                      _isHidden ? Icons.visibility : Icons.visibility_off,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      toggleBalanceView();
                    },
                  )),
              Spacer(),
              Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 20),
                  child: Text(
                    "Active",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
            ],
          ),
          Padding(padding: EdgeInsets.only(bottom: 30)),
          Row(
            children: [
              Spacer(),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Text("Type", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          Row(children: [
            Container(
              child: Text(
                "Account Number",
                style: TextStyle(color: Colors.white),
              ),
            )
          ]),
          Row(
            children: [
              Spacer(),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Text("Moment Account",
                    style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "0237842941",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )
            ],
          ),
          Padding(padding: EdgeInsets.only(bottom: 10)),
          Row(
            children: [
              Container(
                  width: 130,
                  height: 40,
                  color: Colors.red[1000],
                  child: TextButton(
                    child: Text(
                      "Fund Account",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  )),
              Spacer(),
              Container(
                  width: 150,
                  height: 40,
                  color: Colors.red[1000],
                  margin: EdgeInsets.only(right: 20),
                  child: TextButton(
                    child: Text(
                      "Transaction History",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  )),
            ],
          ),
          Padding(padding: EdgeInsets.only(bottom: 10)),
        ]),
      ),
      Row(
        children: [
          Container(
              margin: EdgeInsets.only(top: 20, left: 15),
              child: Text("My Favourite",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ))),
          Spacer(),
          Container(
              margin: EdgeInsets.only(top: 20, left: 15, right: 20),
              child: Text("Edit Favourite",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.normal,
                  ))),
        ],
      ),
      Padding(padding: EdgeInsets.only(bottom: 10)),
      Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 15),
            child: ElevatedButton(
                child: Icon(
                  Icons.payments_outlined,
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(50),
                ),
                onPressed: () {}),
          )
        ],
      ),
    ]));
  }
}

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 20, left: 20),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_outlined),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 30, bottom: 20),
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
            margin: EdgeInsets.only(left: 30, bottom: 15),
            alignment: Alignment.topLeft,
            child: Text(
              "Enter your registered email address or username",
              style: TextStyle(
                fontSize: 16,
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
              margin: EdgeInsets.only(top: 10, left: 30, right: 30),
              color: Colors.redAccent,
              height: 40,
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
      body: Container(
          padding: EdgeInsets.all(0),
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 10, left: 10),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_outlined),
                  onPressed: () {},
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(0),
                child: SizedBox(
                    height: 80,
                    width: 200,
                    child: Image(
                      image: AssetImage("assets/logo.png"),
                    )),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Welcome Back!",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                  child: Column(children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 30),
                  padding: EdgeInsets.all(0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Email Address",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  padding: EdgeInsets.all(0),
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
                  margin: EdgeInsets.only(top: 10, left: 30),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Password",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  padding: EdgeInsets.all(0),
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
                  margin: EdgeInsets.only(right: 20),
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
                    margin: EdgeInsets.only(left: 50, right: 50, bottom: 4),
                    color: Colors.redAccent,
                    height: 35,
                    alignment: Alignment.center,
                    child: TextButton(
                      child: Text("Log in",
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                      onPressed: () {
                        //Still working on nextPage
                        //Navigator.push(
                        //context,
                        //MaterialPageRoute(
                        //builder: (context) => BalanceState()),
                        //);
                      },
                    ))
              ])),
              Container(
                  margin: EdgeInsets.only(top: 10, left: 20, bottom: 10),
                  child: RichText(
                      text: TextSpan(
                          text: "Unable to Log in? Kindly ",
                          style: TextStyle(color: Colors.black),
                          children: const <TextSpan>[
                        TextSpan(
                            text: "Sign Up ",
                            style: TextStyle(color: Colors.red)),
                        TextSpan(text: "if")
                      ]))),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text("- You are new to WEMA and ALAT.")),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  child:
                      Text("- You are new to ALAT and have a WEMA account.")),
              Container(
                  margin: EdgeInsets.only(left: 20, bottom: 5),
                  child: Text("- You are new to ALAT and have a WEMA Mobile.")),
            ],
          )),
    );
  }
}
