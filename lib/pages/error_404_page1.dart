import 'package:flutter/material.dart';
import 'package:flutter_error_404/components/button_component.dart';
import 'package:flutter_error_404/components/center_text.dart';
import 'package:flutter_error_404/pages/error_404_page2.dart';

class Error404Page1 extends StatelessWidget {
  const Error404Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff272730),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/img2.png'),
            const SizedBox(height: 95),
            const CenterText(
              text: 'Error 404!',
              color: Color(0xffFFFFFF),
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
            const SizedBox(height: 16),
            const CenterText(
              text:
                  'May be bigfoot has broken this \npage.\nCome back to the homepage',
              color: Color(0xffFFFFFF),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(height: 134),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: CustomButton(
                colors: const [
                  Color(0xff54A353),
                  Color(0xff7FBE7E),
                ],
                text: 'Back to Homepage',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const Error404Page2();
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
