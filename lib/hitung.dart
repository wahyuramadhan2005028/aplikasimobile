import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';

class HitungApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.green,
        title: Text("Hitung Fisika",
        style: TextStyle(
          fontFamily: "Acme"
        ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 250),
          child: Column(
                children: <Widget>[
                SizedBox(
                  width: 280,
                  height: 47,
                  child: MaterialButton(
                  color: Colors.blue,
                  child: Text("Hitung Luas",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontFamily: "Acme"
                  ),
                  ),
                  onPressed: () {
                    Route route = MaterialPageRoute(builder: (context) => LuasApp());
                      Navigator.push(context, route);
                  },
                  ),
                ),
                SizedBox(height: 20),
               SizedBox(
                 width: 280,
                  height: 47,
                 child: MaterialButton(
                  color: Colors.blue,
                  child: Text("Hitung Volume",
                  style: TextStyle(
                    color: Colors.white,
                      fontSize: 21,
                    fontFamily: "Acme"
                  ),
                  ),
                  onPressed: () {
                    Route route = MaterialPageRoute(builder: (context) => VolumeApp());
                      Navigator.push(context, route);
                  },
                  ),
               ),
                ],
                ),
        ),
      )
    );
  }
}





        class LuasApp extends StatefulWidget {
          @override
          _LuasAppState createState() => _LuasAppState();
        }

        class _LuasAppState extends State<LuasApp> {
          double panjang = 0;
          double lebar = 0;

          var _nama = new TextEditingController();

          @override
          Widget build(BuildContext context) {
            return new Scaffold(
              appBar: new AppBar(
                leading: new Icon(Icons.view_list),
                title: new Text("Menghitung Luas"),
                backgroundColor: Colors.green,
                centerTitle: true,
                actions: <Widget>[
                  new IconButton(
                    icon: Icon(Icons.person,
                    color: Colors.white,
                    ),
                    onPressed: (){},
                  ),
                ],
              ),
              body: ListView(
                children: <Widget>[
                  new Container(
                    padding: new EdgeInsets.all(20),
                    child: new Column(
                      children: <Widget>[
                        new Padding(
                          padding: new EdgeInsets.only(top:20),
                            ),
                          new Row(
                            children: <Widget>[
                              Expanded(
                                child: TextField(
                                  onChanged: (txt){
                                    setState(() {
                                      panjang = double.parse(txt);
                                    });
                                  },
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                  decoration: InputDecoration(
                                    labelText: "Input Panjang",
                                    suffix: Text("m"),
                                    border: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(10)
                                    ),
                                    hintText: "Panjang"
                                  ),
                                )
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                child: TextField(
                                  onChanged: (txt){
                                    setState(() {
                                      lebar = double.parse(txt);
                                    });
                                  },
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                  decoration: InputDecoration(
                                    labelText: "Input Lebar",
                                    suffix: Text("m"),
                                    border: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(10)
                                    ),
                                    hintText: "Lebar"
                                  ),
                                )
                                ),
                            ],
                          ),
                          new Padding(
                            padding: new EdgeInsets.only(top:20),
                          ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 10,
                            right: 10,
                            bottom: 20
                            ),
                            child: RaisedButton(
                              onPressed: (){
                                var route = new MaterialPageRoute(
                                  builder: (BuildContext)=>
                                  new LuasPage(input_panjang: panjang, input_lebar: lebar),
                                );
                                Navigator.of(context).push(route);
                              },
                              padding: EdgeInsets.all(10.0),
                              color: Colors.blue,
                              textColor: Colors.white,
                              child: Text("Hitung Luas",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
        }



        class VolumeApp extends StatefulWidget {
          @override
          _VolumeAppState createState() => _VolumeAppState();
        }

        class _VolumeAppState extends State<VolumeApp> {
          double panjang = 0;
          double lebar = 0;
           double tinggi = 0;

          var _nama = new TextEditingController();

          @override
          Widget build(BuildContext context) {
            return new Scaffold(
              appBar: new AppBar(
                leading: new Icon(Icons.view_list),
                title: new Text("Menghitung Volume"),
                backgroundColor: Colors.green,
                centerTitle: true,
                actions: <Widget>[
                  new IconButton(
                    icon: Icon(Icons.person,
                    color: Colors.white,
                    ),
                    onPressed: (){},
                  ),
                ],
              ),
              body: ListView(
                children: <Widget>[
                  new Container(
                    padding: new EdgeInsets.all(20),
                    child: new Column(
                      children: <Widget>[
                        new Padding(
                          padding: new EdgeInsets.only(top:20),
                            ),
                          new Row(
                            children: <Widget>[
                              Expanded(
                                child: TextField(
                                  onChanged: (txt){
                                    setState(() {
                                      panjang = double.parse(txt);
                                    });
                                  },
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                  decoration: InputDecoration(
                                    labelText: "Input Panjang",
                                    suffix: Text("m"),
                                    border: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(10)
                                    ),
                                    hintText: "Panjang"
                                  ),
                                )
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                child: TextField(
                                  onChanged: (txt){
                                    setState(() {
                                      lebar = double.parse(txt);
                                    });
                                  },
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                  decoration: InputDecoration(
                                    labelText: "Input Lebar",
                                    suffix: Text("m"),
                                    border: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(10)
                                    ),
                                    hintText: "Lebar"
                                  ),
                                )
                                ),
                                 SizedBox(width: 10),
                                 Expanded(
                                child: TextField(
                                  onChanged: (txt){
                                    setState(() {
                                      tinggi = double.parse(txt);
                                    });
                                  },
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                  decoration: InputDecoration(
                                    labelText: "Input Tinggi",
                                    suffix: Text("m"),
                                    border: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(10)
                                    ),
                                    hintText: "Tinggi"
                                  ),
                                )
                                ), 
                            ],
                          ),
                          new Padding(
                            padding: new EdgeInsets.only(top:20),
                          ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 10,
                            right: 10,
                            bottom: 20
                            ),
                            child: RaisedButton(
                              onPressed: (){
                                var route = new MaterialPageRoute(
                                  builder: (BuildContext)=>
                                  new VolumePage(input_panjang: panjang, input_lebar: lebar, input_tinggi: tinggi),
                                );
                                Navigator.of(context).push(route);
                              },
                              padding: EdgeInsets.all(10.0),
                              color: Colors.blue,
                              textColor: Colors.white,
                              child: Text("Hitung Volume",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
        }







        
              class LuasPage extends StatelessWidget {

              LuasPage({@required this.input_panjang, @required this.input_lebar});
              final double input_panjang;
              final double input_lebar;

              int thasil;
              String cHasil;
              int hasil;

                @override
                Widget build(BuildContext context) {
                  double hasil = (input_panjang * input_lebar*1.0);
                  return Scaffold(
                    appBar: AppBar(
                      centerTitle: true,
                      title: Text("Hasil"),
                    ),
                    body: Container(
                      color: Colors.white,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                            child: Container(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                            child: Container(
                              color: Colors.white,
                            ),
                          ),
                          Text("Panjang : $input_panjang m",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.black54,
                            fontFamily: "Acme",
                            ),
                          ),
                          SizedBox(height: 5),
                          Text("Lebar : $input_lebar m",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.black54,
                            fontFamily: "Acme"
                            ),                          
                          ),
                          SizedBox(height: 5),
                          Text("Jadi Luasnya adalah : ",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.black54,
                            fontFamily: "Acme"
                          ),
                          ),
                          EasyRichText('$hasil m2',
                          patternList: [
                                EasyRichTextPattern(
                                  style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black,
                                ),
                                targetString: '$hasil m',
                              ),
                              EasyRichTextPattern(
                                targetString: '2',
                                style: TextStyle(
                                  fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black,
                                ),
                                superScript: true,
                                stringBeforeTarget: 'm',
                                matchWordBoundaries: false,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }
              }




               class VolumePage extends StatelessWidget {

              VolumePage({@required this.input_panjang, @required this.input_lebar, @required this.input_tinggi});
              final double input_panjang;
              final double input_lebar;
              final double input_tinggi;

              int thasil;
              String cHasil;
              int hasil;

                @override
                Widget build(BuildContext context) {
                  double hasil = (input_panjang * input_lebar * input_tinggi * 1.0);
                  return Scaffold(
                    appBar: AppBar(
                      centerTitle: true,
                      title: Text("Hasil"),
                    ),
                    body: Container(
                      color: Colors.white,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                            child: Container(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                            child: Container(
                              color: Colors.white,
                            ),
                          ),
                          Text("Panjang : $input_panjang m",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.black54,
                            fontFamily: "Acme",
                            ),
                          ),
                          SizedBox(height: 5),
                          Text("Lebar : $input_lebar m",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.black54,
                            fontFamily: "Acme"
                            ),                          
                          ),
                          SizedBox(height: 5),
                          Text("Tinggi : $input_tinggi m",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.black54,
                            fontFamily: "Acme"
                            ),                          
                          ),
                          SizedBox(height: 5),
                          Text("Jadi Volumenya adalah : ",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.black54,
                            fontFamily: "Acme"
                          ),
                          ),
                          EasyRichText('$hasil m3',
                              patternList: [
                                EasyRichTextPattern(
                                targetString: '$hasil m',
                                style: TextStyle(
                                  fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black,
                                ),
                              ),
                              EasyRichTextPattern(
                                targetString: '3',
                                style: TextStyle(
                                  fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black,
                                ),
                                superScript: true,
                                stringBeforeTarget: 'm',
                                matchWordBoundaries: false,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }
              }