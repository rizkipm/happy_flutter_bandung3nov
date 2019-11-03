import 'package:flutter/material.dart';

class PageListWisata extends StatefulWidget {
  @override
  _PageListWisataState createState() => _PageListWisataState();
}

class _PageListWisataState extends State<PageListWisata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page List Data'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 200.0,
              padding: EdgeInsets.all(20),
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Image.asset('gambar/wisata5.jpeg'),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Image.asset('gambar/wisata6.jpeg'),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Image.asset('gambar/wisata7.jpeg'),
                  )
                ],
              ),
            ),
            Text(
              'List Wisata Bandung',
              style: TextStyle(
                color: Colors.green,
                fontSize: 18.0,
                fontWeight: FontWeight.bold
              ),
            ),
            Container(
              padding: EdgeInsetsDirectional.only(top: 12),
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                    Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Image.asset('gambar/wisata5.jpeg'),
                  ),
                  Text('Wisata 1'),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Image.asset('gambar/wisata6.jpeg'),
                  ),
                  Text('Wisata 2'),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Image.asset('gambar/wisata7.jpeg'),
                  ),
                  Text('Wisata 3'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
