import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Simple Flutter App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the value  (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  TextEditingController txtFname = TextEditingController();
  TextEditingController txtMname = TextEditingController();
  TextEditingController txtLname = TextEditingController();


  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  void _minusCounter() {
    setState(() {
      _counter--;
    });
  }

  double result = 0;
  void _add(){
    setState(() {
      result = double.parse(txtFname.text) + double.parse(txtMname.text);
    });
  }

  void _minus(){
    setState(() {
      result = double.parse(txtFname.text) - double.parse(txtMname.text);
    });
  }

  void _divide(){
    setState(() {
      result = double.parse(txtFname.text) / double.parse(txtMname.text);
    });
  }

  void _multiply(){
    setState(() {
      result = double.parse(txtFname.text) * double.parse(txtMname.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 500),
              child: TextField(
                controller: txtFname,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter First Number',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 500),
              child: TextField(
                controller: txtMname,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Last Number',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: ElevatedButton(
                  onPressed: (){
                    Fluttertoast.showToast(
                        msg: "The Answer is: $result",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 5,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  },
                  child: Text('Display Name')
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
          child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Positioned(
                    bottom: 150,
                    right: 880,
                    child: FloatingActionButton(
                      onPressed: (){
                        _add();
                        Fluttertoast.showToast(
                            msg: "The Answer is: $result",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 5,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );
                      },
                      tooltip: 'Addition',
                      child: const Icon(Icons.add),
                    )),
                Positioned(
                    bottom: 150,
                    right: 780,
                    child: FloatingActionButton(
                      onPressed: (){
                        _minus();
                        Fluttertoast.showToast(
                            msg: "The Answer is: $result",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 5,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );
                      },
                      tooltip: 'Subtract',
                      child: const Icon(Icons.remove),
                    )),
                Positioned(
                    bottom: 150,
                    right: 680,
                    child: FloatingActionButton(
                      onPressed: (){
                        _divide();
                        Fluttertoast.showToast(
                            msg: "The Answer is: $result",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 5,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );
                      },
                      tooltip: 'Divide',
                      child: const Icon(CupertinoIcons.divide),
                    )),
                Positioned(
                    bottom: 150,
                    right: 580,
                    child: FloatingActionButton(
                      onPressed: (){
                        _multiply();
                        Fluttertoast.showToast(
                            msg: "The Answer is: $result",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 5,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );
                      },
                      tooltip: 'Multiply',
                      child: const Icon(CupertinoIcons.multiply),
                    )),
              ]
          )
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

