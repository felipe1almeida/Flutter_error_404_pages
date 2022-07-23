import 'package:flutter/material.dart';
import 'package:flutter_error_404/components/button_component.dart';
import 'package:flutter_error_404/components/center_text.dart';

class Error404Page3 extends StatelessWidget {
  const Error404Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff47606C),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              left: MediaQuery.of(context).size.width * -0.55,
              top: MediaQuery.of(context).size.height * -0.1,
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 283,
                  height: 283,
                  decoration: const BoxDecoration(
                    color: Color(0xff577482),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            Positioned(
              right: MediaQuery.of(context).size.width * -0.35,
              top: MediaQuery.of(context).size.height * -0.1,
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 363,
                  height: 254,
                  decoration: const BoxDecoration(
                    color: Color(0xff577482),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.15,
              right: MediaQuery.of(context).size.height * 0.30,
              child: Align(
                alignment: Alignment.topCenter,
                child: Transform.rotate(
                  angle: 4,
                  child: Container(
                    width: 17,
                    height: 17,
                    decoration: const BoxDecoration(
                      color: Color(0xff577482),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.15,
              right: MediaQuery.of(context).size.height * 0.10,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 25,
                  height: 25,
                  decoration: const BoxDecoration(
                    color: Color(0xff577482),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * -.15,
              right: MediaQuery.of(context).size.height * 0.30,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: 283,
                  height: 283,
                  decoration: const BoxDecoration(
                    color: Color(0xff577482),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/img1.png'),
                const SizedBox(height: 54),
                const CenterText(
                  text: 'Oops!',
                  color: Color(0xffFFFFFF),
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(height: 24),
                const CenterText(
                  text: 'Something went wrong!',
                  color: Color(0xffFFFFFF),
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
                const SizedBox(height: 68),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: CustomButton(
                    colors: const [
                      Color(0xff05375A),
                      Color(0xff00192B),
                    ],
                    text: 'Back to Homepage',
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
