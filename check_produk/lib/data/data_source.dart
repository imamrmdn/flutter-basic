import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

Color tealColor = Colors.teal;
EdgeInsets minimumMargin = EdgeInsets.only(right: 10.0, left: 10.0, top: 10.0);
BorderRadiusGeometry borderRadius8 = BorderRadius.circular(8.0);
TextStyle blackTextFont = GoogleFonts.poppins(
  color: Colors.black,
  fontWeight: FontWeight.bold,
);
SpinKitCubeGrid loading = SpinKitCubeGrid(
  color: Colors.amber,
  size: 50.0,
);

class DataSource {
  List produkList = [
    {
      "checked": false,
      "nama_produk": "Macbook Pro 2017",
      "photo":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRPYPcl-Vto8jtq6mrgNSsQJ4MzW-Z0Hnha8g&usqp=CAU",
      "harga": 17000000,
    },
    {
      "checked": false,
      "nama_produk": "Pohon Bonsai",
      "photo":
          "https://bibitonline.com/wp-content/uploads/Tanam-Bonsai-di-Pot.jpg",
      "harga": 2000000,
    },
    {
      "checked": false,
      "nama_produk": "Perkakas Bengkel",
      "photo":
          "https://assets-a1.kompasiana.com/items/album/2019/02/17/reza-reza-satria-palupi-barang-barang-perkakas-yang-wajib-ada-di-jok-motor-5c69721ebde575097a3908a2.jpg",
      "harga": 100000,
    },
    {
      "checked": false,
      "nama_produk": "Sofa Minimalis",
      "photo":
          "https://s1.bukalapak.com/img/6918915411/w-1000/Sofa_Elegan_dan_Minimalis.jpg",
      "harga": 12500000,
    },
    {
      "checked": false,
      "nama_produk": "Laptop Asus ROG",
      "photo":
          "https://images.bisnis-cdn.com/posts/2019/02/02/885035/asus-gaming.jpg",
      "harga": 25400000,
    },
  ];
}
