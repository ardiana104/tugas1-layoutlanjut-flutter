import 'package:flutter/material.dart';
import 'produck.dart';
import 'halaman2.dart';
import 'halaman3.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // ignore: avoid_print
    print(index);
    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Home()),
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const produck()),
        );
        break;
      case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Halaman2()),
        );
        break;
      case 3:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Halaman3()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Update AppBar
      appBar: AppBar(
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[Text('Home')]),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                print('click seacrh');
              },
            ),
            IconButton(
              icon: const Icon(Icons.notifications_active),
              onPressed: () {
                print('click seacrh');
              },
            ),
          ]),
      // widget drawer
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            // Drawwer Header diisi dengan informasi akun
            UserAccountsDrawerHeader(
              accountName: const Text('Kadek Ardiana'),
              accountEmail: const Text("ardiana.2@undiksha.ac.id"),
              currentAccountPicture: GestureDetector(
                onTap: () {},
                child: const CircleAvatar(
                  // mengambil gamabar dari internet menggunakan NetworkImage
                  backgroundImage: NetworkImage(
                      'https://lh3.googleusercontent.com/a/ALm5wu3xYTctOljl9iMPSslLLXpWcLqJ81V4fIbNy9Js=s288-p-rw-no'),
                ),
              ),
              // memberikan background pada Drawer Header
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/appimages/bg_drawer.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            // Menu Drawer
            const ListTile(
              title: Text('Notifications'),
              trailing: Icon(Icons.notifications_none),
            ),
            const ListTile(
              title: Text('Wishlist'),
              trailing: Icon(Icons.bookmark_border),
            ),
            const ListTile(
              title: Text('Akun'),
              trailing: Icon(Icons.verified_user),
            ),
            // Divider Menu
            const Divider(height: 2),
            const ListTile(
              title: Text('Setting'),
              trailing: Icon(Icons.settings),
            )
          ],
        ),
        // seluruh body dibungkus column
// tidak terdapat perubahan pada body pada body home.dart tugas ardi sebelumnya
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      body: Column(
        children: <Widget>[
          Image.asset(
            "assets/appimages/img-dua.jpg",
            width: 400,
          ),
// setiap bagian body di pisahkan oleh container
          Container(
            color: const Color.fromARGB(255, 101, 141, 206),
            padding: const EdgeInsets.all(15),
// untuk menampilkan secara horisontal maka menggunakan Row
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Rp. 190.000",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        'Points 10.200',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.local_offer,
                  color: Color.fromARGB(255, 219, 146, 9),
                ),
                const Text('70%')
              ],
            ),
          ),
// setip bagian body di pisahkan oleh container
          Container(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Theme.of(context).dividerColor)),
            ),
// untuk membuat tampilan secara horisontal maka digunkan row
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
// untuk membuat tampilan secara vertikal maka digunkan column
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Icon(Icons.grid_on, color: Colors.blue),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: const Text(
                        "Semua Kategori",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Icon(Icons.shop, color: Colors.blue),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: const Text(
                        "Fashion",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Icon(Icons.computer, color: Colors.blue),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: const Text(
                        "Computer",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Icon(Icons.smartphone, color: Colors.blue),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: const Text(
                        "Smartphone",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.orange, Colors.yellow],
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kebutuhan Sehari-hari',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      'Diskon Up to 70%',
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    )
                  ],
                )),
                Text('Cek Sekarang'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
