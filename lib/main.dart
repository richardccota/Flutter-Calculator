import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _typing = "";
  String _operator = "";
  String num1 = "";
  String num2 = "";
  String temp = "";
  int result = 0;



  void updateCalc() {
    setState(() {
    });
  }

  void _calculate() {
    temp = num1;
    num1 = num2;
    num2 = temp;
    if(_operator == "+")
    {
      result = int.parse(num1) + int.parse(num2);
    }
    else if (_operator == "-")
    {
      result = int.parse(num1) - int.parse(num2);
    }
    else if (_operator == "*")
    {
      result = int.parse(num1) * int.parse(num2);
    }
    else {
        result = int.parse(num1) ~/ int.parse(num2);
    }
    num1 = result.toString();
  }

  void _zero() {
    _typing+="0";
    num1+="0";
    setState(() {});
  }

  void _one() {
    _typing+="1";
    num1+="1";
    print(num1);

    setState(() {});
  }

  void _two() {
    _typing+="2";
    num1+="2";
    print(num1);

    setState(() {});
  }

  void _three() {
    _typing+="3";
    num1+="3";
    print(num1);

    setState(() {});
  }

  void _four() {
    _typing+="4";
    num1+="4";
    setState(() {});
    print(num1);

  }

  void _five() {
    _typing+="5";
    num1+="5";
    print(num1);

    setState(() {});
  }

  void _six() {
    _typing+="6";
    num1+="6";
    print(num1);

    setState(() {});
  }

  void _seven() {
    _typing+="7";
    num1+="7";
    print(num1);

    setState(() {});
  }

  void _eight() {
    _typing+="8";
    num1+="8";
    setState(() {});
    print(num1);

  }

  void _nine() {
    _typing+="9";
    num1+="9";
    setState(() {});
    print(num1);
  }

  void _add() {
    _typing = "";
    _operator = "+";
    num2 = num1;
    num1="";
    print("NUM1: "+num1);
    print("NUM2: "+num2);
    setState(() {});
  }

  void _sub() {
    _typing = "";
    _operator = "-";
    num2 = num1;
    num1="";
    print("NUM1: "+num1);
    print("NUM2: "+num2);
    setState(() {});
  }

  void _mult() {
    _typing = "";
    _operator = "*";
    num2 = num1;
    num1="";
    print("NUM1: "+num1);
    print("NUM2: "+num2);
    setState(() {});
  }

  void _divide() {
    _typing = "";
    _operator = "/";
    num2 = num1;
    num1="";
    print("NUM1: "+num1);
    print("NUM2: "+num2);
    setState(() {});
  }

  void _equals() {
    print("NUM1: "+num1);
    print("NUM2: "+num2);
    _calculate();
    print("NUM1: "+num1);
    print("NUM2: "+num2);
    _typing = result.toString();
    setState(() {
    });
  }

  void _clear() {
    _typing = "";
    num1 = "";
    num2 = "";
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Text(_typing,
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 70,
                )),
              alignment: Alignment.centerRight,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _button("1", _one),
                _button("2", _two),
                _button("3", _three),
                _button("=", _equals),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _button("4", _four),
                _button("5", _five),
                _button("6", _six),
                _button("-", _sub),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _button("7", _seven),
                _button("8", _eight),
                _button("9", _nine),
                _button("+", _add),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _button("0", _zero),
                _button("/", _divide),
                _button("C", _clear),
                _button("X", _mult),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _button(String num, Function() f)
{
  return RaisedButton(
    child: Text(num),
    onPressed: () => f(),
  );
}