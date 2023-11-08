import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currentIndex = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Cek rute saat ini
    final currentRoute = ModalRoute.of(context)!.settings.name;

    // Atur indeks berdasarkan rute saat ini
    if (currentRoute == '/history') {
      _currentIndex = 1; 
    } else {
      _currentIndex = 0; 
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 10,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 12,
            currentIndex: _currentIndex,
            selectedItemColor: Colors
                .red, // Mengatur warna tombol yang aktif (History akan menjadi merah)
            unselectedItemColor: const Color.fromARGB(
                255, 0, 0, 0), // Mengatur warna tombol yang tidak aktif
            onTap: (index) {
              if (index == 0) {
                Navigator.of(context).pushNamed('/home');
              } else if (index == 1) {
                Navigator.of(context).pushNamed('/history');
              }
            },
            items: [
              itemBar(Icons.home, "Home"),
              itemBar(Icons.history, "History"),
              BottomNavigationBarItem(
                icon: SizedBox(
                  width: 28,
                  height: 28,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.qr_code,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                label: "Pay",
              ),
              itemBar(Icons.inbox, "Inbox"),
              itemBar(Icons.switch_account, "Account"),
            ],
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem itemBar(IconData icon, String label) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}