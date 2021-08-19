import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meetup_onboarding/app/modules/onboarding/onboarding_store.dart';
import 'package:flutter/material.dart';
import 'package:meetup_onboarding/app/modules/onboarding/pages/page_one.dart';
import 'package:meetup_onboarding/app/modules/onboarding/pages/page_three.dart';
import 'package:meetup_onboarding/app/modules/onboarding/pages/page_two.dart';
import 'package:meetup_onboarding/app/modules/onboarding/widgets/page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  final String title;
  const OnboardingPage({Key? key, this.title = 'OnboardingPage'})
      : super(key: key);
  @override
  OnboardingPageState createState() => OnboardingPageState();
}

class OnboardingPageState extends State<OnboardingPage> {
  final OnboardingStore store = Modular.get();

  int _currentPage = 0;
  double _pageValue = 0;
  final _pageController = PageController();
  final _listController = ScrollController();

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      int _nextPage = _pageController.page!.round();

      setState(() {
        _pageValue = _pageController.page!;
      });

      if (_currentPage != _nextPage) {
        setState(() {
          _currentPage = _nextPage;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
    _listController.dispose();
  }

  final _pages = <Widget>[
    PageOne(),
    PageTwo(),
    PageThree(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: PageView(
                controller: _pageController,
                children: _pages,
              ),
            ),
            Align(
              alignment: Alignment(.0, .65),
              child: PageIndicatorWidget(_currentPage, _pages.length),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 32.0),
              alignment: Alignment.bottomCenter,
              child: Material(
                elevation: 1,
                color: (_pageValue >= 0.5 && _pageValue < 1.5)
                    ? Color.fromARGB(255, 76, 224, 210)
                    : Color.fromARGB(255, 4, 28, 22),
                borderRadius: BorderRadius.circular(32.0),
                child: InkWell(
                  borderRadius: BorderRadius.circular(32.0),
                  onTap: () {
                    _currentPage++;
                    if (_currentPage < _pages.length) {
                      _pageController.jumpToPage(_currentPage);
                    }
                    if (_currentPage == _pages.length) {
                      Modular.to.navigate('/other-page');
                    }
                  },
                  child: Container(
                    height: 48,
                    width: 106,
                    alignment: Alignment.center,
                    child: Text(
                      "Next",
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
