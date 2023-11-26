import 'package:flutter/material.dart';

void main() {
  runApp(const Input());
}

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _NavbarState();
}

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    primary: Colors.lightBlue,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 80),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
  );

class _NavbarState extends State<Input> {
   final TextEditingController foodController = TextEditingController();
  food? selectedFood;
  @override
  Widget build(BuildContext context) {
     final List<DropdownMenuEntry<food>> yourfood =
        <DropdownMenuEntry<food>>[];
    for (final food color in food.values) {
      yourfood.add(
        DropdownMenuEntry<food>(
            value: color,
            label: color.label,
            enabled: color.label != 'Bir'),
      );
    }
    double globalWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body:  SingleChildScrollView(
        child: Column(
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
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: Offset(1, 2))
                        ]),
                    child: Container(
                      margin: EdgeInsets.only(left: 5, top: 2, bottom: 2),
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
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: Offset(1, 2))
                        ]),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.person),
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 60, left: 35),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Nama produk",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        width: (globalWidth / 1.2),
                        height: (globalWidth / 7.9),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 5,
                                  offset: Offset(2, 2))
                            ]),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            hintText: 'Masukkan Nama Produk',
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
             Container(
              margin: EdgeInsets.only(top: 20, left: 35),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Harga",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        width: (globalWidth / 1.2),
                        height: (globalWidth / 7.9),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 5,
                                  offset: Offset(2, 2))
                            ]),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            hintText: 'Masukkan Harga',
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
        margin: EdgeInsets.only(top: 20, left: 35),
        child: Column(
          children: [
        Row(
          children: [
            Text(
              "Kategori Produk",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              width: (globalWidth / 1.2),
              height: (globalWidth / 7.9),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5,
                    offset: Offset(2, 2),
                  )
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: DropdownMenu<food>(
                  width: 350,
                  // ... (properti DropdownMenu yang lain)
                  initialSelection: food.hm,
                  controller: foodController,
                  dropdownMenuEntries: yourfood,
                  onSelected: (food? food) {
                    setState(() {
                      selectedFood = food;
                    });
                  },
                ),
              )
            ),
          ],
        ),
          ],
        ),
      ),
         Container(
              margin: EdgeInsets.only(top: 20, left: 35),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Image",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        width: (globalWidth / 1.2),
                        height: (globalWidth / 7.9),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 5,
                                  offset: Offset(2, 2))
                            ]),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            hintText: 'Choose Image',
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
             Container(
                    margin: EdgeInsets.only(left: 20, top: 20),
                    decoration: BoxDecoration(),
                    child: ElevatedButton(
                      style: raisedButtonStyle,
                      onPressed: () {},
                      child: Text('Submit',
                      style: TextStyle(fontSize: 20),
                      selectionColor: Colors.white,
                      ),
                    )),
          ],
        ),
      ),
    );
  }
}

enum food {
  hm('---', Colors.blue),
  makanan('Makanan', Colors.blue),
  minuman('Minuman', Colors.pink),
  trn('Bir', Colors.grey);

  const food(this.label, this.color);
  final String label;
  final Color color;
}