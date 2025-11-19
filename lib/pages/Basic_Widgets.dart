import 'package:flutter/material.dart';

class BasicWidgets extends StatefulWidget {
  const BasicWidgets({super.key});

  @override
  State<BasicWidgets> createState() => _BasicWidgetsState();
}

class _BasicWidgetsState extends State<BasicWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Love You Aye Thander Tun",
          style: TextStyle(
            color: Colors.pinkAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _getText("Hello,"),
              _getText("Swan Htet Pyae Sone"),
              _getTextAndButton(),
              // TextButton(onPressed: () {}, child: Text("This is text button")),
              _outLineButtonAndIconButton(),
              // Image.network("")
              InkWell(onTap: () {}, child: Icon(Icons.search, size: 70)),
              GestureDetector(onTap: () {}, child: FlutterLogo(size: 70)),
            ],
          ),
        ),
      ),
    );
  }

  _getText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 25.0,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  _outLineButtonAndIconButton() {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.greenAccent,
                content: Text(
                  "Message Sent Successfully!",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            );
          },
          icon: Icon(
            Icons.heart_broken_outlined,
            size: 30.0,
            color: Colors.pinkAccent,
          ),
        ),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.yellowAccent,
            side: BorderSide(color: Colors.redAccent, width: 2.0),
          ),
          child: Text("Out line button"),
        ),
      ],
    );
  }

  _getTextAndButton() {
    return Row(
      children: [
        Text("Login to Continue > "),
        SizedBox(width: 22.0, height: 22.0),
        ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.pinkAccent,
                content: Text("This is message style"),
              ),
            );
            print("It is clicked!");
          },
          child: Text("Login"),
        ),
      ],
    );
  }
}
