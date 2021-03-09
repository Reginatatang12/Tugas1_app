import 'package:flutter/material.dart';
import 'package:tugas_1/detailproduk.dart';

void main() => runApp(MaterialApp());

class Produklist extends StatefulWidget {
  @override
  _ProduklistState createState() => _ProduklistState();
}

class _ProduklistState extends State<Produklist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Produk Listing')),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    nama: "Nexus",
                    deskripsi: "blablabla",
                    harga: 2000,
                    gambar: "merah.jpg",
                    star: 2,
                  ),
                ));
              },

              child: ProdukBox(
                  nama: "Nexus",
                  deskripsi: "blablabla",
                  harga: 2000,
                  gambar: "meerah.jpg",
                  star: 2), //productbox
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    nama: "Nexus",
                    deskripsi: "blablabla",
                    harga: 2000,
                    gambar: "merah.jpg",
                    star: 2,
                  ),
                ));
              },

              child: ProdukBox(
                  nama: "Nexus",
                  deskripsi: "blablabla",
                  harga: 2000,
                  gambar: "meerah.jpg",
                  star: 2), //productbox
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    nama: "Nexus",
                    deskripsi: "blablabla",
                    harga: 2000,
                    gambar: "merah.jpg",
                    star: 2,
                  ),
                ));
              },

              child: ProdukBox(
                  nama: "Nexus",
                  deskripsi: "blablabla",
                  harga: 2000,
                  gambar: "merah.jpg",
                  star: 2), //productbox
            ),
          ],
        ));
  }
}

class ProdukBox extends StatelessWidget {
  ProdukBox(
      {Key key, this.nama, this.deskripsi, this.harga, this.gambar, this.star})
      : super(key: key);
  final String nama;
  final String deskripsi;
  final int harga;
  final String gambar;
  final int star;
  final children = <Widget>[];

  Widget build(BuildContext context) {
    for (var i = 0; 1 < star; i++) {
      children.add(new Icon(
        Icons.star,
        size: 10,
        color: Colors.deepOrange,
      ));
    }

    return Container(
        padding: EdgeInsets.all(10),
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset(
                "assets/appimages/" + gambar,
                width: 150,
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(this.nama,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    Text(this.deskripsi),
                    Text(
                      "price: " + this.harga.toString(),
                      style: TextStyle(color: Colors.pink),
                    ),
                    Row(
                      children: <Widget>[
                        Row(
                          children: children,
                        )
                      ],
                    )
                  ],
                ),
              ))
            ])));
  }
}
