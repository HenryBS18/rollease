import 'package:flutter/material.dart';
import 'package:rollease/models/OnBoarding.dart';
import 'package:rollease/views/widgets/type_of_rent.dart';
import 'package:rollease/views/widgets/toggle_button.dart';

class TutorialBookingPage extends StatefulWidget {
  const TutorialBookingPage({Key? key}) : super(key: key);

  @override
  State<TutorialBookingPage> createState() => _TutorialBookingPageState();
}

class _TutorialBookingPageState extends State<TutorialBookingPage> {
  bool isLeftActive = true;

  void toggleToLeft() {
    setState(() {
      isLeftActive = true;
    });
  }

  void toggleToRight() {
    setState(() {
      isLeftActive = false;
    });
  }

  final List<OnBoarding> argoOnBoardingList = [
    OnBoarding(
      title: 'Ambil tipe kendaraan yang anda inginkan',
      description: '',
      image: 'assets/TORArgo1.png',
    ),
    OnBoarding(
      title: 'Gunakan kendaraan listrik tersebut secara bebas di kawasan CPI',
      description: ' ',
      image: 'assets/TORArgoo2.png',
    ),
    OnBoarding(
      title: 'Bayar sesuai dengan total durasi pemakaian kendaraan listrik.',
      description: ' ',
      image: 'assets/TORArgo3.png',
    ),
  ];

  final List<OnBoarding> rentOnBoardingList = [
    OnBoarding(
      title: 'Ambil tipe kendaraan listrik yang anda inginkan',
      description: ' ',
      image: 'assets/TORArgo1.png',
    ),
    OnBoarding(
      title: 'Pilih lama durasi yang anda inginkan untuk menyewa kendaraan listrik',
      description: ' ',
      image: 'assets/torargo2.png',
    ),
    OnBoarding(
      title: 'Gunakan kendaraan listrik tersebut secara bebas di kawasan CPI',
      description: ' ',
      image: 'assets/TORArgoo2.png',
    ),
    OnBoarding(
      title: 'Bayar sesuai dengan durasi yang telah dipilih.',
      description: ' ',
      image: 'assets/TORArgo3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text(
            "Type of Rent",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          ToggleButton(
            width: 220,
            height: 50,
            isLeftActive: isLeftActive,
            leftDescription: "Argo",
            rightDescription: "Rent",
            toggleColor: Colors.green,
            toggleBackgroundColor: const Color.fromARGB(255, 230, 230, 230),
            toggleBorderColor: const Color.fromARGB(255, 255, 255, 255),
            activeTextColor: Colors.white,
            inactiveTextColor: const Color.fromARGB(255, 164, 164, 164),
            onLeftToggle: toggleToLeft,
            onRightToggle: toggleToRight,
          ),
          const SizedBox(height: 8),
          isLeftActive ? TypeOfRent(onBoardingList: argoOnBoardingList) : TypeOfRent(onBoardingList: rentOnBoardingList),
          const SizedBox(height: 32),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(Color(0xffA2C90C)),
              shape: MaterialStatePropertyAll(
                ContinuousRectangleBorder(borderRadius: BorderRadius.circular(24)),
              ),
            ),
            onPressed: () {},
            child: const SizedBox(
              width: 144,
              height: 48,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Next",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}