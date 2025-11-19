import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
      body: Center(child: Text("HomePage")),
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
