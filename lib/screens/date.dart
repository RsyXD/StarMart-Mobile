import 'package:flutter/material.dart';

import 'package:starbhakmart_mobile/screens/input_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Date(),
    );
  }
}

class Date extends StatefulWidget {
  const Date({Key? key}) : super(key: key);

  @override
  State<Date> createState() => _DateState();
}

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    primary: Colors.lightBlue,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 60),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
  );
class _DateState extends State<Date> {
  @override
  Widget build(BuildContext context) {
      double globalWidth = MediaQuery.of(context).size.width;
    return Scaffold(

      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                child: Container(
                  margin: EdgeInsets.only(left: 20, top: 25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  margin: EdgeInsets.only(right: 30, top: 25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 20, top: 80),
                  decoration: BoxDecoration(),
                  child: ElevatedButton(
                    style: raisedButtonStyle,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Input()),);  
                    },
                    child: Text('Add Data',
                    selectionColor: Colors.white,
                    ),
                  )),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 5,right: 6),
            child: Column(

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Foto",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    Text("Nama Produk",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    Text("Harga",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    Text("Aksi",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  ],
                ),
                Divider(
      height: 20,  // Tinggi garis
      color: const Color.fromARGB(255, 0, 0, 0),  // Warna garis
      thickness: 2,  // Ketebalan garis
      indent: 20,  // Jarak awal dari sisi kiri
      endIndent: 20,  // Jarak akhir dari sisi kanan
    ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(

                           width: (globalWidth / 4.6),
                                height: (globalWidth / 4.6),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "images/kentang.jpg",
                                    ),
                                  ),
                                ),
                        ),
                      ],
                    ),
                    Text("French Fries",
                    style: TextStyle(fontSize: 14.7)),
                    Text("Rp. 13.000,00",
                     style: TextStyle(fontSize: 14.7)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.restore_from_trash_outlined,
                    size: 40,color: Colors.red,))
                  ],
                ),
                 Divider(
      height: 20,  // Tinggi garis
      color: const Color.fromARGB(255, 0, 0, 0),  // Warna garis
      thickness: 2,  // Ketebalan garis
      indent: 20,  // Jarak awal dari sisi kiri
      endIndent: 20,  // Jarak akhir dari sisi kanan
    ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(

                           width: (globalWidth / 4.6),
                                height: (globalWidth / 4.6),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "images/kotak.jfif",
                                    ),
                                  ),
                                ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 60),
                      child: Text("Teh Kotak",
                      style: TextStyle(fontSize: 15)),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text("Rp. 4.000,00",
                       style: TextStyle(fontSize: 15)),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.restore_from_trash_outlined,
                    size: 40,color: Colors.red,))
                  ],
                ),
                 Divider(
      height: 20,  // Tinggi garis
      color: const Color.fromARGB(255, 0, 0, 0),  // Warna garis
      thickness: 2,  // Ketebalan garis
      indent: 20,  // Jarak awal dari sisi kiri
      endIndent: 20,  // Jarak akhir dari sisi kanan
    ),
      Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(

                           width: (globalWidth / 4.6),
                                height: (globalWidth / 4.6),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "images/burger.jpg",
                                    ),
                                  ),
                                ),
                        ),
                      ],
                    ),
                    Text("Burger Small",
                    style: TextStyle(fontSize: 14.7)),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text("Rp. 10.000,00",
                       style: TextStyle(fontSize: 14.7)),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.restore_from_trash_outlined,
                    size: 40,color: Colors.red,))
                  ],
                ),
                             Divider(
      height: 20,  // Tinggi garis
      color: const Color.fromARGB(255, 0, 0, 0),  // Warna garis
      thickness: 2,  // Ketebalan garis
      indent: 20,  // Jarak awal dari sisi kiri
      endIndent: 20,  // Jarak akhir dari sisi kanan
    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}