import 'package:flutter/material.dart';
import 'package:uts_flutter/app/widgets/navbar.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'Transaction History',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            bottom: TabBar(
              indicatorColor: Color.fromARGB(255, 244, 0, 0),
              tabs: [
                Tab(
                  child: Text('Pending',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'Inter')),
                ),
                Tab(
                  child: Text('Done', style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // Tab "Pending"
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Gambar dari file lokal
                    Image.asset(
                      'assets/icons/historylinkaja.png',
                      width: 190, // Sesuaikan lebar gambar sesuai kebutuhan
                      height: 190, // Sesuaikan tinggi gambar sesuai kebutuhan
                    ),
                    SizedBox(height: 35),

                    Text(
                      'All Transaction is Completed!',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Any pending transaction will appear in this page',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),

              // Tab "Done"
              Center(
                child: Text('Transaction is Completed!'),
              ),
            ],
          ),
          bottomNavigationBar: Navbar(),
        ),
      ),
    );
  }
}
