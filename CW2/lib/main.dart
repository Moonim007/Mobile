import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int num = 0;
  String num1 = "";
  String num2 = "";
  String oprator = "";
  String showval = "0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator STF"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              showval.toString(),
              style: TextStyle(fontSize: 40),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (oprator.isEmpty) {
                        num1 += "7";
                        showval = num1;
                      } else {
                        num2 += "7";
                        showval = num2;
                      }
                    });
                  },
                  child: Text("7"),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (oprator.isEmpty) {
                        num1 += "8";
                        showval = num1;
                      } else {
                        num2 += "8";
                        showval = num2;
                      }
                    });
                  },
                  child: Text("8"),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (oprator.isEmpty) {
                        num1 += "9";
                        showval = num1;
                      } else {
                        num2 += "9";
                        showval = num2;
                      }
                    });
                  },
                  child: Text("9"),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      oprator = "+";
                    });
                  },
                  child: Text("+"),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (oprator.isEmpty) {
                        num1 += "4";
                        showval = num1;
                      } else {
                        num2 += "4";
                        showval = num2;
                      }
                    });
                  },
                  child: Text("4"),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (oprator.isEmpty) {
                        num1 += "5";
                        showval = num1;
                      } else {
                        num2 += "5";
                        showval = num2;
                      }
                    });
                  },
                  child: Text("5"),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (oprator.isEmpty) {
                        num1 += "6";
                        showval = num1;
                      } else {
                        num2 += "6";
                        showval = num2;
                      }
                    });
                  },
                  child: Text("6"),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      oprator = "-";
                    });
                  },
                  child: Text("-"),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (oprator.isEmpty) {
                        num1 += "1";
                        showval = num1;
                      } else {
                        num2 += "1";
                        showval = num2;
                      }
                    });
                  },
                  child: Text("1"),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (oprator.isEmpty) {
                        num1 += "2";
                        showval = num1;
                      } else {
                        num2 += "2";
                        showval = num2;
                      }
                    });
                  },
                  child: Text("2"),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (oprator.isEmpty) {
                        num1 += "3";
                        showval = num1;
                      } else {
                        num2 += "3";
                        showval = num2;
                      }
                    });
                  },
                  child: Text("3"),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      oprator = "*";
                    });
                  },
                  child: Text("*"),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      num2 = "";
                      num1 = "";
                      oprator = "";
                      showval = "";
                    });
                  },
                  child: Text("C"),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (oprator.isEmpty) {
                        num1 += "0";
                        showval = num1;
                      } else {
                        num2 += "0";
                        showval = num2;
                      }
                    });
                  },
                  child: Text("0"),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (num1 == "" || num2 == "") return;
                      double newnum1 = double.parse(num1);
                      double newnum2 = double.parse(num2);
                      double result = 0;
                      if (oprator == "+") result = newnum1 + newnum2;
                      if (oprator == "-") result = newnum1 - newnum2;
                      if (oprator == "*") result = newnum1 * newnum2;
                      if (oprator == "/") result = newnum1 / newnum2;
                      showval = result.toString();
                      num1 = result.toString();
                      num2 = "";
                      oprator = "";
                    });
                  },
                  child: Text("="),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      oprator = "/";
                    });
                  },
                  child: Text("/"),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
