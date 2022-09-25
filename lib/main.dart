import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sixth/output.dart';
void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return MaterialApp(
	title: 'Pocket Terminal',
	theme: ThemeData(
		primarySwatch: Colors.amber,
	),
	home: MyHomePage(),
	debugShowCheckedModeBanner: false,
	);
}
}

class MyHomePage extends StatefulWidget {
@override
_MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
@override
void initState() {
	super.initState();
	Timer(Duration(seconds: 5),
		()=>Navigator.pushReplacement(context,
										MaterialPageRoute(builder:
														(context) =>
														output()
														)
									)
		);
}
@override
Widget build(BuildContext context) {
	return Container(
	color: Colors.black,
	child:Image.asset('assets/linux-terminal.png')
  //FlutterLogo(size:MediaQuery.of(context).size.height)
  
	);
}
}

/*

class SecondScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(title:Text("GeeksForGeeks")),
	body: Center(
		child:Text("Home page",textScaleFactor: 2,)
	),
	);
}
}
import 'package:flutter/material.dart';


main() {
  runApp(MaterialApp(home:output()));
}
*/