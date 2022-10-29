import 'package:flutter/material.dart';

// clas detailproduk
class DetailProduk extends StatefulWidget {
// untuk menampung parameter detail produk yang dikirim dari list pr
  const DetailProduk(
      {super.key,
      required this.name,
      required this.description,
      required this.price,
      required this.image,
      required this.star});
// Variabel yang digunkan untuk menampung parameter tersebut
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  @override
// karena menggunkan satatefulwidget maka diperlukan state detail produk
  State<DetailProduk> createState() => _DetailProdukState();
}

// class satate detail produk
class _DetailProdukState extends State<DetailProduk> {
// inisialisasi variabel star
  final childrenstar = <Widget>[];

  @override
  Widget build(BuildContext context) {
// membuat star secara dinamis sesuai jumlah star yang dikirim dari list produk
    for (var i = 0; i < widget.star; i++) {
      childrenstar.add(const Icon(
        Icons.star,
        size: 15,
        color: Colors.yellow,
      ));
    }
// widget scaffold sebagai isi halaman
    return Scaffold(
      // app bar
      appBar: AppBar(
        // ignore: unnecessary_string_interpolations
        // title detail produk yang isinya nama produk dalam widget text
        title: Text("${widget.name}"),
      ),
      // ignore: sized_box_for_whitespace
      // body halamn dibungkus widget container
      body: Container(
        width: double.infinity,
// detail produk dalam container dibungkus dengan Widget listview supaya bisa di scrool
        child: ListView(
          // adapun isi didalamnya dibungkus dengan children
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset("assets/appimages/${widget.image}")
              ],
            ),
            Container(
              // decoration digunakan untuk memberikan disain berupa background dll
              // decoration dapat digunakan pada widget container
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff3164bd), Color(0xff295cb5)],
                ),
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: childrenstar,
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: Text(
                      widget.price.toString(),
                      // memberikan style pada text
                      style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: "NeoSansBlod"),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.lightBlue,
              // maxsimal width
              width: double.infinity,
              // maxsimal height
              height: double.maxFinite,
              child: Text(widget.description),
            )
          ],
        ),
      ),
    );
  }
}
