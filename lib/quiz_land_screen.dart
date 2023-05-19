import 'package:catchcountry_flutter_app/utility/Typografie.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:lottie/lottie.dart';

class LandMarkQuizScreen extends StatelessWidget {
  const LandMarkQuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(

      // ),
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            width: width,
            height: height * .8,
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: width * .5,
              child: Lottie.asset('assets/lotties/building.json'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height: height * .7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Typografie().bodyLarge('이번 문제는 뭐뭐 입니둥', Colors.black),
                  SizedBox(
                    height: 200,
                    child: Center(
                      child: Text("사진나올거임"),
                    ),
                  ),
                  SizedBox(
                    width: width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Typografie().bodyMedium('1번 ~', Colors.black),
                        Typografie().bodyMedium('2번 ~', Colors.black),
                        Typografie().bodyMedium('3번 ~', Colors.black),
                        Typografie().bodyMedium('4번 ~', Colors.black),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.lightBlue.shade100,
        onPressed: () {
          final snackBar = SnackBar(
            elevation: 0,
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.transparent,
            content: AwesomeSnackbarContent(
              title: '틀렸음',
              message: '틀렸지롱~틀렸지롱~틀렸지롱~틀렸지롱~틀렸지롱~',
              contentType: ContentType.failure,
            ),
          );

          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(snackBar);
        },
        label: Typografie().labelMedium('Answer Submit', Colors.white),
        icon: const FaIcon(
          FontAwesomeIcons.paperPlane,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
