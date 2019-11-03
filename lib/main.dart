import 'package:flutter/material.dart';
import 'list_wisata.dart';

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
      home: PageHome(),debugShowCheckedModeBanner: false,
    );
  }
}

class PageHome extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Wisata Apps'),
        backgroundColor: Colors.green,
      ),

      body: ListView(
        //child
        //children
        children: <Widget>[

          Container(
            child: Image.asset('gambar/tenor.gif', 
              height: 175,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: MaterialButton(
                color: Colors.green,
                textColor: Colors.white,
                onPressed: (){
                  //untuk pindah
                  //Navigator
                  //push : class A ke class B
                  //pop : class B ke class A
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=>PageSatu()));


                },
                child: Text('Page 1'),
              ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: MaterialButton(
               color: Colors.green,
               textColor: Colors.white,
               onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=>PageListWisata()));

               },
               child: Text('List Wisata'),
            ),

          ),
        ],
      ),
      
    );
  }
}

class PageSatu extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Page Satu'),
      ),

      body: Center(
        child: Text('Ini Page 1', style: TextStyle(fontSize: 20,
          fontWeight: FontWeight.bold, color: Colors.green
        ),))
        ,
     
    );
  }
}