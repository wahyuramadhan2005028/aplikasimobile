import 'package:flutter/material.dart';

class KonversiApp extends StatefulWidget {
  @override
  _KonversiAppState createState() => _KonversiAppState();
  
}

class _KonversiAppState extends State<KonversiApp> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  double nilaiawal = 0;
  String _nilaiawal;
  String _nilaiakhir;
  List _awalsatuan = [
    "Kilometer(km)",
    "Hektometer(hm)",
    "Dekameter(dam)",
    "Meter(m)",
    "Desimeter(dm)",
    "Centimeter(cm)",
    "Milimeter(mm)"
    ];
  List _akhirsatuan = [
    "Kilometer(km)",
    "Hektometer(hm)",
    "Dekameter(dam)",
    "Meter(m)",
    "Desimeter(dm)",
    "Centimeter(cm)",
    "Milimeter(mm)"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Konversi Panjang")),
      body:  ListView(
                children: <Widget>[
                  new Container(
                    padding: new EdgeInsets.all(20),
                    child: Form(
                      key: _formKey,
                        child: new Column(
                        children: <Widget>[
                          new Padding(
                            padding: new EdgeInsets.only(top:20),
                              ),
                            new Row(
                              children: <Widget>[
                                Expanded(
                                  child: TextFormField(                                                    
                                    validator: (txt){
                                      if(txt.isEmpty){
                                      return "Harus diisi";
                                    }
                                    return null;
                                    },
                                    onChanged: (txt){
                                      setState(() {
                                        nilaiawal = double.parse(txt);
                                      });
                                    },
                                    keyboardType: TextInputType.number,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                    decoration: InputDecoration(
                                      labelText: "Input Nilai Awal",
                                      border: new OutlineInputBorder(
                                        borderRadius: new BorderRadius.circular(10)
                                      ),
                                      hintText: "Panjang"
                                    ),
                                  )
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                  child:  DropdownButton(
                                      hint: Text("Satuan Panjang"),
                                      value: _nilaiawal,
                                      items: _akhirsatuan.map((value) {
                                        return DropdownMenuItem(
                                          child: Text(value),
                                          value: value,
                                        );
                                      }).toList(),
                                      onChanged: (value) {
                                        setState(() {
                                          _nilaiawal = value;  //Untuk memberitahu _nilaiawal bahwa isi nya akan diubah sesuai dengan value yang kita pilih
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(height: 20),
                              ],
                            ),
                            SizedBox(height:25),
                            Text("Konversi Ke",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: "Acme"
                            ),
                            ),
                              SizedBox(height:20),
                              DropdownButton(
                              hint: Text("Satuan Panjang"),
                              value: _nilaiakhir,
                              items: _awalsatuan.map((value) {
                                return DropdownMenuItem(
                                  child: Text(value),
                                  value: value,
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  _nilaiakhir = value;  //Untuk memberitahu _nilaiakhir bahwa isi nya akan diubah sesuai dengan value yang kita pilih
                                });
                              },
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
                                  if (_formKey.currentState.validate()) {
                                      //event /Future/void
                                       var route = new MaterialPageRoute(
                                        builder: (BuildContext)=>
                                        new KonversiPage(konversiawal: _nilaiawal, konversiakhir: _nilaiakhir, inputnilai: nilaiawal),
                                      );
                                      Navigator.of(context).push(route);
                                    } 
                                },
                                padding: EdgeInsets.all(10.0),
                                color: Colors.blue,
                                textColor: Colors.white,
                                child: Text("Hitung Nilai",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Text("Gunakan titik(.) untuk bilangan pecahan",
                          style: TextStyle(
                            color: Colors.red
                          ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
    );
  }
}


class KonversiPage extends StatelessWidget {

              KonversiPage({@required this.konversiawal,@required this.konversiakhir,@required this.inputnilai});
              final String konversiawal;
              final String konversiakhir;
              final double inputnilai;
             double hasil;

                @override
                Widget build(BuildContext context) {
                  if (konversiawal == "Kilometer(km)" && konversiakhir == "Kilometer(km)") {
                    hasil = inputnilai * 1.0 ;
                  }else if(konversiawal == "Kilometer(km)" && konversiakhir == "Hektometer(hm)"){
                    hasil = inputnilai * 10.0;
                  }else if(konversiawal == "Kilometer(km)" && konversiakhir == "Dekameter(dam)"){
                    hasil = inputnilai * 100.0;
                  }else if(konversiawal == "Kilometer(km)" && konversiakhir == "Meter(m)"){
                    hasil = inputnilai * 1000.0;
                  }else if(konversiawal == "Kilometer(km)" && konversiakhir == "Desimeter(dm)"){
                     hasil = inputnilai * 10000.0;
                  }else if(konversiawal == "Kilometer(km)" && konversiakhir == "Centimeter(cm)"){
                     hasil = inputnilai * 100000.0;
                  }else if(konversiawal == "Kilometer(km)" && konversiakhir == "Milimeter(mm)"){
                      hasil = inputnilai * 1000000.0;
                  }else if(konversiawal == "Hektometer(hm)" && konversiakhir == "Kilometer(km)"){
                     hasil = inputnilai / 10.0;
                  }else if(konversiawal == "Hektometer(hm)" && konversiakhir == "Hektometer(hm)"){
                    hasil = inputnilai * 1.0;
                  }else if(konversiawal == "Hektometer(hm)" && konversiakhir == "Dekameter(dam)"){
                    hasil = inputnilai * 10.0;
                  }else if(konversiawal == "Hektometer(hm)" && konversiakhir == "Meter(m)"){
                    hasil = inputnilai * 100.0;
                  }else if(konversiawal == "Hektometer(hm)" && konversiakhir == "Desimeter(dm)"){
                     hasil = inputnilai * 1000.0;
                  }else if(konversiawal == "Hektometer(hm)" && konversiakhir == "Centimeter(cm)"){
                     hasil = inputnilai * 10000.0;
                  }else if(konversiawal == "Hektometer(hm)" && konversiakhir == "Milimeter(mm)"){
                      hasil = inputnilai * 100000.0;
                  }else if(konversiawal == "Dekameter(dam)" && konversiakhir == "Kilometer(km)"){
                     hasil = inputnilai / 100.0;
                  }else if(konversiawal == "Dekameter(dam)" && konversiakhir == "Hektometer(hm)"){
                    hasil = inputnilai / 10.0;
                  }else if(konversiawal == "Dekameter(dam)" && konversiakhir == "Dekameter(dam)"){
                    hasil = inputnilai * 1.0;
                  }else if(konversiawal == "Dekameter(dam)" && konversiakhir == "Meter(m)"){
                    hasil = inputnilai * 10.0;
                  }else if(konversiawal == "Dekameter(dam)" && konversiakhir == "Desimeter(dm)"){
                     hasil = inputnilai * 100.0;
                  }else if(konversiawal == "Dekameter(dam)" && konversiakhir == "Centimeter(cm)"){
                     hasil = inputnilai * 1000.0;
                  }else if(konversiawal == "Dekameter(dam)" && konversiakhir == "Milimeter(mm)"){
                      hasil = inputnilai * 10000.0;
                  }else if(konversiawal == "Meter(m)" && konversiakhir == "Kilometer(km)"){
                     hasil = inputnilai / 1000.0;
                  }else if(konversiawal == "Meter(m)" && konversiakhir == "Hektometer(hm)"){
                    hasil = inputnilai / 100.0;
                  }else if(konversiawal == "Meter(m)" && konversiakhir == "Dekameter(dam)"){
                    hasil = inputnilai / 10.0;
                  }else if(konversiawal == "Meter(m)" && konversiakhir == "Meter(m)"){
                    hasil = inputnilai * 1.0;
                  }else if(konversiawal == "Meter(m)" && konversiakhir == "Desimeter(dm)"){
                     hasil = inputnilai * 10.0;
                  }else if(konversiawal == "Meter(m)" && konversiakhir == "Centimeter(cm)"){
                     hasil = inputnilai * 100.0;
                  }else if(konversiawal == "Meter(m)" && konversiakhir == "Milimeter(mm)"){
                      hasil = inputnilai * 1000.0;
                  }else if(konversiawal == "Desimeter(dm)" && konversiakhir == "Kilometer(km)"){
                     hasil = inputnilai / 10000.0;
                  }else if(konversiawal == "Desimeter(dm)" && konversiakhir == "Hektometer(hm)"){
                    hasil = inputnilai / 1000.0;
                  }else if(konversiawal == "Desimeter(dm)" && konversiakhir == "Dekameter(dam)"){
                    hasil = inputnilai / 100.0;
                  }else if(konversiawal == "Desimeter(dm)" && konversiakhir == "Meter(m)"){
                    hasil = inputnilai / 10.0;
                  }else if(konversiawal == "Desimeter(dm)" && konversiakhir == "Desimeter(dm)"){
                     hasil = inputnilai / 1.0;
                  }else if(konversiawal == "Desimeter(dm)" && konversiakhir == "Centimeter(cm)"){
                     hasil = inputnilai * 10.0;
                  }else if(konversiawal == "Desimeter(dm)" && konversiakhir == "Milimeter(mm)"){
                      hasil = inputnilai * 100.0;
                  }else if(konversiawal == "Centimeter(cm)" && konversiakhir == "Kilometer(km)"){
                     hasil = inputnilai / 100000.0;
                  }else if(konversiawal == "Centimeter(cm)" && konversiakhir == "Hektometer(hm)"){
                    hasil = inputnilai / 10000.0;
                  }else if(konversiawal == "Centimeter(cm)" && konversiakhir == "Dekameter(dam)"){
                    hasil = inputnilai / 1000.0;
                  }else if(konversiawal == "Centimeter(cm)" && konversiakhir == "Meter(m)"){
                    hasil = inputnilai / 100.0;
                  }else if(konversiawal == "Centimeter(cm)" && konversiakhir == "Desimeter(dm)"){
                     hasil = inputnilai / 10.0;
                  }else if(konversiawal == "Centimeter(cm)" && konversiakhir == "Centimeter(cm)"){
                     hasil = inputnilai / 1.0;
                  }else if(konversiawal == "Centimeter(cm)" && konversiakhir == "Milimeter(mm)"){
                      hasil = inputnilai * 10.0;
                  }else if(konversiawal == "Milimeter(mm)" && konversiakhir == "Kilometer(km)"){
                     hasil = inputnilai / 1000000.0;
                  }else if(konversiawal == "Milimeter(mm)" && konversiakhir == "Hektometer(hm)"){
                    hasil = inputnilai / 100000.0;
                  }else if(konversiawal == "Milimeter(mm)" && konversiakhir == "Dekameter(dam)"){
                    hasil = inputnilai / 10000.0;
                  }else if(konversiawal == "Milimeter(mm)" && konversiakhir == "Meter(m)"){
                    hasil = inputnilai / 1000.0;
                  }else if(konversiawal == "Milimeter(mm)" && konversiakhir == "Desimeter(dm)"){
                     hasil = inputnilai / 100.0;
                  }else if(konversiawal == "Milimeter(mm)" && konversiakhir == "Centimeter(cm)"){
                     hasil = inputnilai / 10.0;
                  }else if(konversiawal == "Milimeter(mm)" && konversiakhir == "Milimeter(mm)"){
                      hasil = inputnilai / 1.0;
                  }
                  return Scaffold(
                     appBar: AppBar(
                      centerTitle: true,
                      title: Text("Hasil"),
                    ),
                    body: Center(
                      child: Container(
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
                          Text("Nilai awal : $inputnilai $konversiawal",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.black54,
                            fontFamily: "Acme",
                            ),
                          ),
                          SizedBox(height: 5),
                          Text("Dikonversi ke $konversiakhir",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.black54,
                            fontFamily: "Acme"
                            ),                          
                          ),
                          SizedBox(height: 5),
                          Text("Jadi Hasilnya adalah : ",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.black54,
                            fontFamily: "Acme"
                          ),
                          ),
                          SizedBox(height: 5),
                          Text("$hasil $konversiakhir",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.black
                          ),
                          ),
                        ],
                      ),
                    ),
                    ),
                  );
                }
              }