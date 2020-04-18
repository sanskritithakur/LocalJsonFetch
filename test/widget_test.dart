// import 'dart:convert';

// import 'package:flutter/material.dart';

// void main()=>runApp(MyApp());


// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "myjsonapp",
//       home: HomeScreen(),
//     );
//   }
// }



// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   List data;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Container(child: Center(
//         child: FutureBuilder(
//           future:DefaultAssetBundle.of(context).loadString('load_json/person.json') ,

//           builder: (BuildContext context,AsyncSnapshot snapshot){
//                var myData=json.decode(snapshot.data.toString());
//                return ListView.builder(
//                  itemCount: myData==null?0:myData.length,
//                  itemBuilder:(BuildContext context,int index){
                   
//                    return  Card(
//                    child:Text(myData[index]['name']),
//                  );
//                  }
                 
//                  );
//           }
       
          
//           ),
      
      
//       ,),),
//     );
//   }
// }