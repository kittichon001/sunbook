import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  late PageController _pageController;
  late List<Widget> slideList;
  late int initialPage;

  @override
  void initState() {
    _pageController = PageController(initialPage: 1);
    initialPage = _pageController.initialPage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GFIntroScreen(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      currentIndex: initialPage,
      pageController: _pageController,
      pageCount: 5,
      slides: _slides(),
      introScreenBottomNavigationBar: GFIntroScreenBottomNavigationBar(
        pageController: _pageController,
        currentIndex: initialPage,
        pageCount: slideList.length,
        backButtonText: 'Previous',
        forwardButtonText: 'Next',
        skipButtonText: 'Skip',
        doneButtonText: 'Done',
        navigationBarHeight: 50,
        navigationBarWidth: 300,
        navigationBarShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60),
        ),
        navigationBarColor: Colors.white,
        showDivider: false,
        dotHeight: 10,
        dotWidth: 16,
        dotShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        activeColor: GFColors.SUCCESS,
        dotMargin: const EdgeInsets.symmetric(horizontal: 6),
        showPagination: true,
        onDoneTap: () => Get.toNamed('/login'),
        onSkipTap: () => Get.toNamed('/login'),
      ),
    );
  }

  List<Widget> _slides() {
    slideList = [
      GFImageOverlay(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(16),
        color: Colors.orange,
        image: const NetworkImage(
            'https://th.bing.com/th/id/R.6bbfec1d705358aaad27e151de7ef381?rik=RcR1YnrSfhhKGQ&pid=ImgRaw&r=0'),
        boxFit: BoxFit.cover,
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
        borderRadius: BorderRadius.circular(5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 70.0, left: 20),
              child: Text(
                'Welcome!',
                style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 25),
              ),
            ),
          ],
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            image: DecorationImage(
              image: const NetworkImage(
                  'https://i.pinimg.com/736x/f9/89/be/f989beb9a06a16ec14e39ca2ffcb66a5.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.darken),
            )),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            image: DecorationImage(
              image: const NetworkImage(
                  'https://i.pinimg.com/originals/58/e8/d3/58e8d3095828b7c569c38a428b822be9.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.darken),
            )),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            image: DecorationImage(
              image: const NetworkImage(
                  'https://th.bing.com/th/id/R.3bcade33fc54fc308a970ca2cacf9a89?rik=%2bQF8XZUzS9rafA&pid=ImgRaw&r=0'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.darken),
            )),
      ),
    ];
    return slideList;
  }
}
