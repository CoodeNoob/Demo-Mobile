import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Image list
  final List<String> images = [
    "https://picsum.photos/id/1001/400/250",
    "https://picsum.photos/id/1002/400/250",
    "https://picsum.photos/id/1003/400/250",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Home Page"),
        actions: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.home),
            label: Text("Go"),
          ),
        ],
      ),
      body: Column(
        children: [
          Text("Hello", style: TextStyle(fontSize: 24)),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 2.0,
              ),
              itemCount: 6,

              itemBuilder: (context, index) {
                return Image(image: AssetImage("assets/images/google.png"));
              },
            ),
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Text("Menu"),
            ),
            _makeDrawerItem("Product", Icons.home),
            _makeDrawerItem("Cart", Icons.shopping_bag),
            _makeDrawerItem("Setting", Icons.settings),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }

  _makeDrawerItem(String title, IconData icon) {
    return ListTile(title: Text(title), leading: Icon(icon), onTap: () {});
  }
}
