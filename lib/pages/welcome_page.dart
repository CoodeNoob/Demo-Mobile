import 'package:demo_nexus_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  late PageController _pageController;

  int _curPage = 0;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int index) {
              _curPage = index;
              print("Current Page $_curPage");
              setState(() {});
            },
            children: [
              _makeDecoratedBox("default-profile.jpg"),
              _makeDecoratedBox("default-profile.jpg"),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/default-profile.jpg"),
                    fit: BoxFit.contain,
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(child: SizedBox()),
                    Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                          colors: [Colors.pinkAccent, Colors.amberAccent],
                        ),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                        ),
                        child: Text(
                          "Start",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 100),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Expanded(child: SizedBox()),
              SizedBox(
                height: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber,
                        border: _curPage == 0
                            ? Border.all(color: Colors.black, width: 2)
                            : Border.all(color: Colors.amber, width: 0),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber,
                        border: _curPage == 1
                            ? Border.all(color: Colors.black, width: 2)
                            : Border.all(color: Colors.amber, width: 0),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber,
                        border: _curPage == 2
                            ? Border.all(color: Colors.black, width: 2)
                            : Border.all(color: Colors.amber, width: 0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _makeDecoratedBox(String path) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/$path"),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
