import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:http/http.dart' as http;

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      home: Scaffold(
        appBar: AppBar(
          elevation: 3.3,
          toolbarHeight: 45,
          title: Text(
            "Dokar App",
            style: TextStyle(
                color: Color.fromARGB(255, 241, 241, 241),
                fontWeight: FontWeight.w600,
                fontSize: 15),
          ),
          backgroundColor: Color.fromARGB(255, 0, 66, 122),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              iconSize: 26,
              onPressed: () {},
            )
          ],
        ),
        body: Container(
          width: 360,
          // decoration: BoxDecoration(border: Border.all()),
          child: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              Container(
                // margin: EdgeInsets.only(top: 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(top: 100, bottom: 20),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/carrousel.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                color: Color.fromARGB(167, 255, 255, 255),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 3),
                                child: Text(
                                  "Hello!",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 17,
                                      color: Color.fromARGB(255, 58, 53, 53)),
                                ),
                              ),
                              Container(
                                color: Color.fromARGB(199, 255, 255, 255),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 3),
                                child: Text(
                                  "Let's find your dream motorbike",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      color: Color.fromARGB(255, 0, 71, 129)),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Murah, Aman, Dan Nyaman',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 3, 1, 24),
                              ),
                            ),
                            Text(
                              "Marketplace showroom Dokar, Mempermudahkan user mencari dan membeli motor impianya",
                              textAlign: TextAlign.justify,
                              style: TextStyle(fontSize: 13),
                            )
                          ]),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Rekomendasi untuk anda",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: GridView.count(
                        childAspectRatio: 0.9,
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        children: List.generate(10, (index) {
                          return Container(
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  border: Border.all(width: 0.6),
                                  borderRadius: BorderRadius.circular(7)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("images/produk.jpg"),
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Rp. 00.000.000",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color:
                                                Color.fromARGB(255, 172, 13, 2),
                                          ),
                                        ),
                                        Text(
                                          "Motor Sport Murah Bekas Pemakaian Wanita",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Color.fromARGB(255, 63, 63, 63),
                                          ),
                                        ),
                                        Center(
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                elevation: 0.2,
                                                backgroundColor:
                                                    Colors.red[600]),
                                            onPressed: () {},
                                            child: Text("Beli"),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ));
                        }),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 49,
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    size: 20,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 20,
                  ),
                  label: "Keranjang"),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.money,
                  size: 20,
                ),
                label: "Transaksi",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.face,
                  size: 20,
                ),
                label: "Username",
              ),
            ],
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color.fromARGB(255, 11, 79, 167),
            unselectedItemColor: Color.fromARGB(255, 216, 213, 213),
            selectedItemColor: Colors.white,
            selectedFontSize: 0,
          ),
        ),
      ),
    );
  }
}
