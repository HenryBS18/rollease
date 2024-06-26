part of 'widgets.dart';

class TypeOfRent extends StatefulWidget {
  final List<OnBoarding> onBoardingList;

  const TypeOfRent({super.key, required this.onBoardingList});

  @override
  _TypeOfRentState createState() => _TypeOfRentState();
}

class _TypeOfRentState extends State<TypeOfRent> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // color: Colors.red,
          height: MediaQuery.of(context).size.height * 0.5,
          padding: const EdgeInsets.only(left: 32, right: 32),
          margin: const EdgeInsets.only(top: 16),
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.onBoardingList.length,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return OnBoardingCard(
                title: widget.onBoardingList[index].title,
                description: widget.onBoardingList[index].description,
                image: widget.onBoardingList[index].image,
              );
            },
          ),
        ),
        DotsIndicator(
          dotsCount: widget.onBoardingList.length,
          position: _currentIndex,
          decorator: const DotsDecorator(
            color: Color.fromARGB(255, 215, 239, 185),
            size: Size(13.0, 11.0),
            activeColor: CustomColors.primary,
            activeSize: Size(17.0, 17.0),
          ),
        ),
      ],
    );
  }
}
