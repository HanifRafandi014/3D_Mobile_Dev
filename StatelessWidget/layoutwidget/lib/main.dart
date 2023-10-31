import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 244, 0, 0),
            title: Text("MyApp"),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'Berita',
                ),
                Tab(
                  text: 'Pertandingan Hari ini',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                width: 200.0,
                height: 300.0,
                child: Column(
                  children: [
                    Image.network(
                      'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt8f381d19d9c8d246/60dc02d820a5380ed1a4489e/b21af15a62b1f217b7e68c5b183e50f8facb7109.jpg?auto=webp&format=pjpg&width=3840&quality=60',
                      fit: BoxFit.cover, // Mengatur tampilan gambar
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        'Costa Mendekat Ke Palmaeiras', // Teks di bawah gambar
                        style: TextStyle(
                          fontSize: 16.0, // Ukuran teks
                          fontWeight: FontWeight.bold, // Ketebalan teks
                        ),
                      ),
                    ),
                    Container(
                      color: Color.fromARGB(255, 179, 0, 202),
                      width: double.infinity,
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      margin: EdgeInsets.only(top: 5, bottom: 20),
                      child: Text(
                        'Transfer',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 5, // Ganti dengan jumlah item yang sesuai
                        itemBuilder: (context, index) {
                          final itemImage =
                              'https://ichef.bbci.co.uk/news/640/cpsprodpb/356F/production/_128397631_gettyimages-1286178456.jpg';
                          final itemTitle =
                              'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat';
                          final itemDate = '20-08-2023';
                          return ListTile(
                            leading: Image.network(
                              itemImage,
                              // Atur lebar gambar sesuai keinginan
                              width: 150,
                              fit: BoxFit.cover, // Mengatur tampilan gambar
                            ),
                            title: Text(
                              itemTitle,
                              style: TextStyle(
                                fontSize:
                                    12.0, // Atur ukuran font sesuai keinginan
                              ),
                            ),
                            subtitle: Text(
                              itemDate,
                              style: TextStyle(
                                fontSize:
                                    12.0, // Atur ukuran font sesuai keinginan
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Text('Konten Pertandingan Hari ini'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

