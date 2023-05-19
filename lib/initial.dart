import 'package:catchcountry_flutter_app/home.dart';
import 'package:catchcountry_flutter_app/utility/Typografie.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(152, 200, 208, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(152, 200, 208, 1),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                )),
          )
        ],
      ),
      body: SafeArea(
          child: Center(
        child: CarouselSlider(
          items: [
            SizedBox(
              width: width * 0.9,
              child: Column(
                children: [
                  Container(
                    width: width,
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: width,
                      height: 300,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: Lottie.asset('assets/lotties/culture.json'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: width,
                    child: Typografie()
                        .headlineLarge('Culture Quiz', Colors.white),
                  ),
                  SizedBox(
                    width: width,
                    child: Typografie().headlineMedium('content', Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: width * 0.9,
              child: Column(
                children: [
                  Container(
                    width: width,
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: width,
                      height: 300,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: Lottie.asset('assets/lotties/quiz.json'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: width,
                    child: Typografie()
                        .headlineLarge('Submit Answer', Colors.white),
                  ),
                  SizedBox(
                    width: width,
                    child: Typografie().headlineMedium('content', Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: width * 0.9,
              child: Column(
                children: [
                  Container(
                    width: width,
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: width,
                      height: 300,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: Lottie.asset('assets/lotties/comment.json'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: width,
                    child: Typografie()
                        .headlineLarge('Check Explain', Colors.white),
                  ),
                  SizedBox(
                    width: width,
                    child: Typografie().headlineMedium('content', Colors.white),
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      },
                      child: Container(
                        width: 200,
                        height: 80,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(width: 3, color: Colors.white)),
                        child:
                            Typografie().labelLarge('Join C.C', Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
          options: CarouselOptions(
              height: height * .8,
              enlargeCenterPage: false,
              autoPlay: false,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: false,
              viewportFraction: 1,
              initialPage: 0),
        ),
      )),
    );
  }
}

// Widget sliderContainer(width, height, icon, title, content) {
//   return SizedBox(
//     width: width * 0.9,
//     child: Column(
//       children: [
//         Container(
//           width: width,
//           alignment: Alignment.topLeft,
//           child: Container(
//               padding: EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15), color: Colors.white),
//               child: icon),
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         SizedBox(
//           width: width,
//           child: Typografie().headlineLarge(title, Colors.white),
//         ),
//         SizedBox(
//           width: width,
//           child: Typografie().headlineMedium(content, Colors.white),
//         ),
//       ],
//     ),
//   );
// }
