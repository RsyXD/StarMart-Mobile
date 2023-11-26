import 'package:flutter/material.dart';
import 'package:starbhakmart_mobile/screens/basket.dart';
import 'package:starbhakmart_mobile/screens/date.dart';


void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Bskt(),
    Date(),
  ];
   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      // Check the index and navigate to a new page
      if (index == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Bskt()),
        );
      }
       if (index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Date()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double globalWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
       child : Column(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            child: Container(
              margin: EdgeInsets.only(left: 20, top: 25),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu),
              ),
            ),
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.only(right: 30, top: 25),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.person),
              ),
            ),
          )
        ],
      ),
      // Ini adalah Opsi Menu
      Container(
        margin: EdgeInsets.only(top: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Container(
                  width: (globalWidth / 4.9),
                  height: (globalWidth / 5.5),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 10,
                          offset: Offset(2, 3)),
                    ],
                    border: Border.all(color: Colors.blueAccent, width: 10),
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("images/burger.jpg")),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Text(
                      "All",
                    )),
              ],
            ),
            Column(
              children: [
                Container(
                  width: (globalWidth / 4.9),
                  height: (globalWidth / 5.5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 10,
                          offset: Offset(2, 3)),
                    ],
                    border: Border.all(color: Colors.white, width: 10),
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("images/kentang.jpg")),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Text(
                      "Food",
                    )),
              ],
            ),
            Column(
              children: [
                Container(
                  width: (globalWidth / 4.9),
                  height: (globalWidth / 5.5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 10,
                          offset: Offset(2, 3)),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    image:
                        DecorationImage(image: AssetImage("images/cola.jpg")),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Text(
                      "Water",
                    )),
              ],
            ),
          ],
        ),
      ),
      Row(
        children: [
          Container(
              margin: const EdgeInsets.only(top: 50, left: 30),
              child: Text(
                "All Food",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ))
        ],
      ),
      // Nama Nama Pesanan
      Card(
        color: Colors.grey,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: Offset(2, 3)),
                        ],
                        border: Border.all(
                          color: Colors.white,
                          width: 15,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: (globalWidth / 2.9),
                            height: (globalWidth / 2.9),
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  child: Text(
                                "Burger Small",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(child: Text("Rp 10.000,00")),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Pesanan 2
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: Offset(2, 3)),
                        ],
                        border: Border.all(
                          color: Colors.white,
                          width: 15,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: (globalWidth / 2.9),
                            height: (globalWidth / 2.9),
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  child: Text(
                                "Burger Medium",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(child: Text("Rp 15.000,00")),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
            // ROW 2
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: Offset(2, 3)),
                        ],
                        border: Border.all(
                          color: Colors.white,
                          width: 15,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: (globalWidth / 2.9),
                            height: (globalWidth / 2.9),
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  child: Text(
                                "French Fries",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(child: Text("Rp 13.000,00")),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Pesanan 2
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: Offset(2, 3)),
                        ],
                        border: Border.all(
                          color: Colors.white,
                          width: 15,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: (globalWidth / 2.8),
                            height: (globalWidth / 2.9),
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  child: Text(
                                "Teh Kotak",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(child: Text("Rp 4.000,00")),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
             Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: Offset(2, 3)),
                        ],
                        border: Border.all(
                          color: Colors.white,
                          width: 15,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: (globalWidth / 2.9),
                            height: (globalWidth / 2.9),
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  child: Text(
                                "Burger Large",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(child: Text("Rp 20.000,00")),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Pesanan 2
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: Offset(2, 3)),
                        ],
                        border: Border.all(
                          color: Colors.white,
                          width: 15,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: (globalWidth / 2.8),
                            height: (globalWidth / 2.9),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(
                                  "images/cola.jpg",
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  child: Text(
                                "Coca Cola",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(child: Text("Rp 5.000,00")),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),

    ]
    ),
    ),
     bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add_outlined),
            label: 'Billing',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 0, 157, 255),
        onTap: _onItemTapped,
      ),
        );
  }
}