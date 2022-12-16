import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:screen_share/new.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {
      //   NewScreen.routeName: (context) => const NewScreen(message: ,),
      // },
      onGenerateRoute: ((settings) {
        if (settings.name == NewScreen.routeName) {
          final args = settings.arguments as String;
          return MaterialPageRoute(builder: (context) {
            return NewScreen(message: args);
          });
        }
      }),
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  TextEditingController txt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextField(
            controller: txt,
          ),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, NewScreen.routeName,
                    arguments: txt.text);
              },
              icon: Icon(Icons.navigate_next_outlined, color: Colors.teal))
        ]),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
