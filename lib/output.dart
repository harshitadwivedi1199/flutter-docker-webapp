import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class output extends StatefulWidget {
  
  @override
  _outputState createState() => _outputState();
}

class _outputState extends State<output> {
  
  late String cmd;
  late var cmdoutput="";
  web() async{
    var url = await http.get(
      Uri.http("192.168.99.101","/cgi-bin/flutter25.py" , {"cmd":cmd}),
    );
    //print(url.body);
    setState(() {
      cmdoutput=url.body;
    });

  }
  @override
  Widget build(BuildContext context) {
      
    return MaterialApp(
      title: 'Pocket Terminal',
      //color: Colors.black,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[50],
        
        appBar: AppBar(
          backgroundColor:Colors.blue[400],
          title: Center(
            child: Text("T E R M I N A L",
            style:TextStyle(
              color:Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              ),
            
            ),
            ),
          ),
          body: Column(
           children: [
             SizedBox(
              height: 30,
            ),
             Text("E N T E R  C O M M A N D",
             style:TextStyle(
               color:Colors.blueAccent[400],
               fontSize: 20,
               fontWeight: FontWeight.bold,
               ),
               ),
             SizedBox(
              height: 30,
            ),
             TextField(
               
               style:TextStyle(
                 color:Colors.blueAccent[400],
                 ),
               textAlign: TextAlign.center,
               decoration: InputDecoration(
                 filled: true,
                 fillColor: Colors.blue[100],
                 hintText: "C O M M A N D",
                 hintStyle: TextStyle(
                   color:Colors.blueAccent[400],
                   fontSize: 10,
                  
               //    fontWeight: FontWeight.ita,
                 ),
                
               ),
               onChanged:(value) {
                 setState(() {
                   cmd=value;

                 });
               }, 
                ),
            SizedBox(
              height: 30,
            ),
             ElevatedButton(
               style: ButtonStyle(),
               onPressed: web, child: Text("RUN", ),
             
             ),
            // TextButton(onPressed: web, child: Text("RUN"), ButtonStyle ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Text(
                "O U T P U T",
                style:TextStyle(
                color:Colors.blueAccent[400],
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
                
                ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
      border: Border.all(
        color: Colors.blueAccent,
        width: 5,
      ),),
                child: Center(
                  child: Text(
                    cmdoutput,
                    style:TextStyle(
                    color:Colors.blue[400],
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
              ),
                    ),
                    ),
                width: MediaQuery.of(context).size.width-20,
                height: MediaQuery.of(context).size.height/2,
               // padding: MediaQuery.of(context).size.,
              //  color: Colors.black,
                
              ),
            ),
           ],
          ),
        ),

    );
  }
}







/*
class SixthApp extends StatelessWidget {
  late String cmd="";
  web() async{
    var url = await http.get(
      Uri.http("192.168.99.101","/cgi-bin/flutter25.py" , {"cmd":cmd}),
    );
    print(url.body);
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Terminal")),
          ),
          body: Column(
           children: [
             SizedBox(
              height: 10,
            ),
             Text("Enter Ur CMD : "),
             SizedBox(
              height: 10,
            ),
             TextField(
               textAlign: TextAlign.center,
               decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 hintText: "Enter Command",
               ),
               onChanged: (value) {
                 cmd=value;
               },
                ),
            SizedBox(
              height: 10,
            ),
             ElevatedButton(onPressed: web, child: Text("RUN"),),
            // TextButton(onPressed: web, child: Text("RUN"), ButtonStyle ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text("OUTPUT:"),
            ),
            Container(
              child: Text(cmd),
            ),
           ],
          ),
        ),

    );
  }
}*/