import 'package:flutter/material.dart';
//import 'package:flutter_onboarding_ui/utilities/styles.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      height: 16.0,
      width: isActive ? 18.0 : 18.0,
      decoration: BoxDecoration(
          color: isActive ? const Color(0xFFFAB631) : Colors.black12,
          shape: BoxShape.circle),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
          child: ListView(
            children: [
              _currentPage == _numPages - 1
                  ? TextButton(onPressed: (() {}), child: const Text(''))
                  : Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                          onPressed: (() {
                            Navigator.pushNamed(context, "signup");
                          }),
                          child: const Text(
                            'SKIP',
                            style: TextStyle(
                                color: Color(0xFFFAB631), fontSize: 20),
                          )),
                    ),
              // ignore: sized_box_for_whitespace
              Container(
                height: MediaQuery.of(context).size.height * 0.82,
                child: PageView(
                  physics: const ClampingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Center(
                            child: Image(
                              image: AssetImage(
                                'Assets/Images/conn.png',
                              ),
                              height: 350.0,
                              width: 350.0,
                            ),
                          ),
                          SizedBox(height: 30.0),
                          Text(
                            'ZONER',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFFAB631),
                              fontFamily: 'ab',
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            'Connect more with your favorite vendors.',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontFamily: 'Product Sans',
                              fontSize: 17.0,
                              height: 1.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Center(
                            child: Image(
                              image: AssetImage(
                                'Assets/Images/chat.jpg',
                              ),
                              height: 350.0,
                              width: 350.0,
                            ),
                          ),
                          SizedBox(height: 30.0),
                          Text(
                            'Chat Away',
                            style: TextStyle(
                                color: Color(0xFFFAB631),
                                fontFamily: 'ab',
                                fontSize: 26.0,
                                height: 1.5,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            'Easily chat with your vendor.',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 17.0,
                              height: 1.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Center(
                            child: Image(
                              image: AssetImage(
                                'Assets/Images/order.jpg',
                              ),
                              height: 350.0,
                              width: 350.0,
                            ),
                          ),
                          SizedBox(height: 30.0),
                          Text(
                            'Order your Favourite',
                            style: TextStyle(
                                color: Color(0xFFFAB631),
                                fontFamily: 'ab',
                                fontSize: 24.0,
                                height: 1.5,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            'Order your favourite item from any vendor',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 16.0,
                              height: 1.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: _buildPageIndicator(),
                    ),
                  ),
                  _currentPage == _numPages - 1
                      ? Expanded(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              padding: const EdgeInsets.all(7),
                              height: 32,
                              width: 130,
                              decoration: const BoxDecoration(
                                  color: Color(0xFFFAB631),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: GestureDetector(
                                onTap: () =>
                                    {Navigator.pushNamed(context, "signup")},
                                child: const Hero(
                                  tag: 'dash',
                                  child: Text(
                                    'GET STARTED',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Product Sans',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      : _currentPage != _numPages - 1
                          ? Expanded(
                              child: Align(
                                alignment: FractionalOffset.bottomRight,
                                child: TextButton(
                                  //made changes
                                  onPressed: () {
                                    _pageController.nextPage(
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.ease,
                                    );
                                  },
                                  child: const Icon(
                                    Icons.arrow_forward,
                                    color: Colors.amber,
                                    size: 30.0,
                                  ),
                                ),
                              ),
                            )
                          : const Text(''),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
