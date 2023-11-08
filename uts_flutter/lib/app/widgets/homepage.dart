import 'package:flutter/material.dart';
import 'package:uts_flutter/app/widgets/navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 249, 252),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://t4.ftcdn.net/jpg/02/15/88/79/360_F_215887984_QCWlnuvmuE7jjf5ivR6tEo40H9HlX6Po.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIcon(
                      imageUrl:
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/LinkAja.svg/2048px-LinkAja.svg.png',
                      width: 32,
                      height: 32,
                    ),
                    Spacer(),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)),
                        padding: EdgeInsets.all(9),
                        child: CustomIcon(
                          imageUrl:
                              'https://cdn-icons-png.flaticon.com/512/481/481367.png',
                          width: 22,
                          height: 22,
                        )),
                    SizedBox(width: 10),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)),
                        padding: EdgeInsets.all(10),
                        child: CustomIcon(
                          imageUrl:
                              'https://cdn-icons-png.flaticon.com/512/1077/1077035.png',
                          width: 20,
                          height: 20,
                        )),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin:
                    EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 5),
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color.fromARGB(255, 230, 48, 35),
                      Color.fromARGB(255, 202, 36, 24),
                      Color.fromARGB(255, 190, 32, 21),
                      Color.fromARGB(255, 159, 25, 16),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, bottom: 10),
                      child: Text(
                        'HI, SOFYAN NOOR ARIEF, S.ST, M.KOM',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 140,
                          height: 70,
                          margin: EdgeInsets.only(top: 5, left: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 12),
                                    child: Text(
                                      'Your Balance',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 15, top: 5, left: 12),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Rp. 10.184',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Container(
                                          width: 20, // Lebar lingkaran ikon
                                          height: 20, // Tinggi lingkaran ikon
                                          decoration: BoxDecoration(
                                            color: Colors
                                                .red, // Warna latar belakang lingkaran
                                            shape: BoxShape
                                                .circle, // Mengatur bentuk latar belakang menjadi lingkaran
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.arrow_forward,
                                              color: Colors.white, // Warna ikon
                                              size: 10, // Ukuran ikon
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 140,
                          height: 70,
                          margin: EdgeInsets.only(top: 5, left: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 12),
                                    child: Text(
                                      'Bonus Balance',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 15, top: 5, left: 12),
                                    child: Row(
                                      children: [
                                        Text(
                                          '0',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Container(
                                          width: 20, // Lebar lingkaran ikon
                                          height: 20, // Tinggi lingkaran ikon
                                          decoration: BoxDecoration(
                                            color: Colors
                                                .red, // Warna latar belakang lingkaran
                                            shape: BoxShape
                                                .circle, // Mengatur bentuk latar belakang menjadi lingkaran
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.arrow_forward,
                                              color: Colors.white, // Warna ikon
                                              size: 10, // Ukuran ikon
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 5),
                width: MediaQuery.of(context).size.width,
                height: 70, // Tinggi kontainer
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey, // Warna border abu-abu
                    width: 0.5, // Lebar border
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceAround, // Untuk menyeimbangkan jarak antara gambar dan teks
                      children: [
                        // Gambar 1 dan Teks 1
                        Column(
                          children: [
                            Image.network(
                              'https://cdn-icons-png.flaticon.com/512/6379/6379126.png',
                              width: 30, // Lebar gambar
                              height: 30, // Tinggi gambar
                            ),
                            Text(
                              'Top Up',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        // Gambar 2 dan Teks 2
                        Column(
                          children: [
                            Image.network(
                              'https://cdn-icons-png.flaticon.com/256/9236/9236032.png',
                              width: 30, // Lebar gambar
                              height: 32, // Tinggi gambar
                            ),
                            Text(
                              'Send Money',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.network(
                              'https://cdn-icons-png.flaticon.com/512/3132/3132830.png',
                              width: 32, // Lebar gambar
                              height: 31, // Tinggi gambar
                            ),
                            Text(
                              'Ticket Code',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.network(
                              'https://cdn-icons-png.flaticon.com/512/274/274749.png',
                              width: 28, // Lebar gambar
                              height: 31, // Tinggi gambar
                            ),
                            Text(
                              'See All',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 5),
                width: MediaQuery.of(context).size.width,
                height: 150, // Tinggi kontainer
                decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.blue,
                              size: 30,
                            ),
                            Text(
                              'Pulsa/Data',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 30,
                            ),
                            Text(
                              'Electrecity',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.email,
                              color: Colors.orange,
                              size: 30,
                            ),
                            Text(
                              'BPJS',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.phone,
                              color: Colors.green,
                              size: 30,
                            ),
                            Text(
                              'mgames',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.home,
                              color: Colors.blue,
                              size: 30,
                            ),
                            Text(
                              'Cable TV',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '& Internet',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.work,
                              color: Colors.red,
                              size: 30,
                            ),
                            Text(
                              'PDAM',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.school,
                              color: Colors.orange,
                              size: 30,
                            ),
                            Text(
                              'Kartu Uang',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              'Elektronik',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.green,
                              size: 30,
                            ),
                            Text(
                              'More',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 175,
                      margin: EdgeInsets.only(left: 20, right: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'data:image/jpeg;base64,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')),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      width: 175,
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRiDF4M1wnuXtOzofnzKvMHGnVZQg8E7OBCA&usqp=CAU')),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      width: 175,
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://images.squarespace-cdn.com/content/v1/5bd82ac99b8fe8178d5bc6e9/4f5ee862-a83c-48df-a9e6-a20106d63007/Blog+1200x675.png')),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      width: 175,
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0Zi0nuKKkob9DfMklauA9f2WSvZvss1S8aA&usqp=CAU')),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}

class CustomIcon extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;

  CustomIcon({
    required this.imageUrl,
    this.width = 30,
    this.height = 30,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle the tap event for the custom icon here
      },
      child: Image.network(
        imageUrl,
        width: width,
        height: height,
      ),
    );
  }
}