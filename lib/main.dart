import 'dart:convert';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "myapp",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 20,
          bottom: 15),
          child: Text("MyList App", style: TextStyle(fontSize: 22),),
        ),
        backgroundColor: Colors.indigo[100],
      ),
      body: Container(
        child: Center(
          child: FutureBuilder(
              future: DefaultAssetBundle.of(context)
                  .loadString('load_json/person.json'),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                var myData = json.decode(snapshot.data.toString());
                return ListView.builder(
                    itemCount: myData == null ? 0 : myData.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Row(
                            children: <Widget>[
                             CircleAvatar(radius: 30,backgroundColor: Colors.pink[100],),
                             SizedBox(width:20),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    myData[index]['name'],
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),

                                 
                                  Row(
                                    children: <Widget>[
                                     Text(myData[index]['gender'], 
                                   style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                           color: Colors.grey
                                        ),),  SizedBox(width: 20),  Text(
                                        myData[index]['age'],
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                           color: Colors.grey
                                        ),
                                      ),
                                     
                                     
                                    ],
                                  ),
                                  SizedBox(height:3),
                                  Text(myData[index]['height'],
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey
                                        ),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              }),
        ),
      ),
    );
  }
}
