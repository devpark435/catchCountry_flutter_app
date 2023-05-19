import 'package:catchcountry_flutter_app/quiz_land_screen.dart';
import 'package:catchcountry_flutter_app/utility/Typografie.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 100,
          title: Container(
            alignment: Alignment.centerLeft,
            child: Typografie().headlineLarge(
              "Do You Know?",
              Colors.pink.shade300,
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: SingleChildScrollView(
            child: Column(
          children: [
            categoryContainer(
                width,
                const FaIcon(
                  FontAwesomeIcons.building,
                  color: Colors.white,
                ),
                'Quiz 1',
                'Land Mark',
                Lottie.asset('assets/lotties/building.json'),
                Colors.lightBlue.shade100,
                Colors.amber,
                context,
                const LandMarkQuizScreen()),
            categoryContainer(
                width,
                const FaIcon(
                  FontAwesomeIcons.flag,
                  color: Colors.white,
                ),
                'Quiz 2',
                'Flag',
                Container(
                  height: 140,
                  margin: const EdgeInsets.only(top: 30),
                  child: Lottie.asset('assets/lotties/flag.json'),
                ),
                Colors.blue.shade300,
                Colors.orange.shade200,
                context,
                const LandMarkQuizScreen()),
            categoryContainer(
                width,
                const FaIcon(
                  FontAwesomeIcons.burger,
                  color: Colors.white,
                ),
                'Quiz 3',
                'Food',
                Lottie.asset('assets/lotties/food.json'),
                Colors.greenAccent.shade100,
                Colors.indigo.shade100,
                context,
                const LandMarkQuizScreen()),
            categoryContainer(
                width,
                const FaIcon(
                  FontAwesomeIcons.shirt,
                  color: Colors.white,
                ),
                'Quiz 4',
                'Custom',
                Lottie.asset('assets/lotties/custom2.json'),
                Colors.orangeAccent.shade100,
                Colors.brown.shade200,
                context,
                const LandMarkQuizScreen())
          ],
        )),
      ),
    );
  }
}

Widget categoryContainer(width, icon, text1, text2, lottie, color1, color2,
    context, navigatorScreen) {
  return GestureDetector(
    child: Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Stack(
        children: [
          SizedBox(
              width: width,
              height: 250,
              child: Column(
                children: [
                  const Expanded(flex: 1, child: SizedBox()),
                  Expanded(
                      flex: 2,
                      child: Container(
                          width: width,
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [color1, color2],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.7),
                                  blurRadius: 5.0,
                                  spreadRadius: 0.0,
                                  offset: const Offset(0, 9),
                                )
                              ]),
                          child: Column(
                            children: [
                              Container(
                                width: width,
                                alignment: Alignment.topLeft,
                                child: Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                            width: 1, color: Colors.white)),
                                    child: icon),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: width,
                                child: Typografie()
                                    .labelMedium(text1, Colors.white),
                              ),
                              SizedBox(
                                width: width,
                                child: Typografie()
                                    .labelLarge(text2, Colors.white),
                              )
                            ],
                          ))),
                ],
              )),
          Container(
            alignment: Alignment.topRight,
            child: SizedBox(
              width: width * 0.6,
              child: lottie,
            ),
          )
        ],
      ),
    ),
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => navigatorScreen));
    },
  );
}
