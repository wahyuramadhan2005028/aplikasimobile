import 'package:flutter/material.dart';
import 'package:flutter_task3/hitung.dart';
import 'package:flutter_task3/konversi.dart';

class MenuPage extends StatelessWidget {
  final appTitle = 'HOME';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(title: Text(title)),
      body: Container(
        margin: EdgeInsets.only(top:60),
        child: Column(
          children: [
            Text("Pilih Menu",
            style: TextStyle(
              fontSize: 30,
              fontFamily:"Acme",
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(height:40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new GestureDetector(
                      child: Container(
                      height: 120,
                      width: 150,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.orange[600],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                      ),
                      child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(          
                          children: <Widget>[
                          Icon(Icons.architecture,
                          size: 80,
                          ),
                          Text('Hitung Fisika')
                          ],
                      ),
                        ),
                    ),
                    onTap: () {
                      Route route = MaterialPageRoute(builder: (context) => HitungApp());
                      Navigator.push(context, route);
                    },
                ),
                new GestureDetector(
                  child: Container(
                  height: 120,
                  width: 150,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.orange[600],
                  boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
                  ),
                  child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      children: <Widget>[
                      Icon(Icons.calculate_rounded,
                      size: 80,
                      ),
                      Text('Konversi Panjang')
                      ],
                    ),
                    ),
                  ),
                   onTap: () {
                      Route route = MaterialPageRoute(builder: (context) => KonversiApp());
                      Navigator.push(context, route);
                    },
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Pilihan Menu'),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            ListTile(
              title: Text('Hitung Fisika'),
              onTap: () {
                Route route = MaterialPageRoute(builder: (context) => HitungApp());
                Navigator.push(context, route);
              },
            ),
            ListTile(
              title: Text('Konversi Nilai Satuan Panjang'),
              onTap: () {
               Route route = MaterialPageRoute(builder: (context) => KonversiApp());
              Navigator.push(context, route);
              },
            ),
          ],
        ),
      ),
   
         bottomNavigationBar: BottomNavigationBar(
           backgroundColor: Colors.blue[400],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
            color: Colors.black
            ),
            title: Text('Beranda',
            style: TextStyle(
              fontFamily: "Acme",
              color: Colors.black
            ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate_rounded,
            color: Colors.black
            ),
            title: Text('Halaman 2',
            style: TextStyle(
              fontFamily: "Acme",
              color: Colors.black
            ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.architecture,
            color: Colors.black
            ),
            title: Text('Halaman 3',
            style: TextStyle(
              fontFamily: "Acme",
              color: Colors.black
            ),
            ),
          ),
        ],
      ),
    );
  }
}