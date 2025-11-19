import 'package:animate_do/animate_do.dart';
import 'package:demo_nexus_app/pages/welcome_page.dart';
import 'package:flutter/material.dart';

class Flash extends StatefulWidget {
  const Flash({super.key});

  @override
  State<Flash> createState() => _FlashState();
}

class _FlashState extends State<Flash> {
  bool isDownload = false;

  _checkVersion() async {
    Future.delayed(Duration(seconds: 5));
    print("Now time is up");

    setState(() {
      isDownload = true;
    });
  }

  @override
  void initState() {
    super.initState();
    _checkVersion();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 52, 52, 52),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ZoomIn(duration: Duration(seconds: 3), child: _makeLogo()),
              SizedBox(height: 20.0),
              _makeTitle(),
              SizedBox(height: 20.0),
              CircularProgressIndicator(
                backgroundColor: Colors.amberAccent,
                color: Colors.redAccent,
              ),
              SizedBox(height: 20.0),
              _makeLoadingText(),
              SizedBox(height: 20.0),
              isDownload ? _makeDownloadButton() : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }

  _makeLogo() {
    return SizedBox(
      width: 50,
      height: 50,
      child: Image(image: AssetImage("assets/images/google.png")),
    );
  }

  _makeTitle() {
    return Text(
      "Nexus.",
      style: TextStyle(
        fontSize: 30.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  _makeLoadingText() {
    return Text(
      "လုပ်ဆောင်နေသည်....စောင့်ပါခင်ဗျာ။",
      style: TextStyle(color: Colors.white),
    );
  }

  _makeDownloadButton() {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => WelcomePage()),
        );
      },
      style: ElevatedButton.styleFrom(elevation: 16),
      icon: Icon(Icons.download, color: Colors.black),
      label: Text("Download", style: TextStyle(color: Colors.black)),
    );
  }
}
