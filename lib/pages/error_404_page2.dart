import 'package:flutter/material.dart';
import 'package:flutter_error_404/components/button_component.dart';
import 'package:flutter_error_404/components/center_text.dart';
import 'package:flutter_error_404/pages/error_404_page3.dart';

class Error404Page2 extends StatelessWidget {
  const Error404Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFB1A9),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          color: Colors.black,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/img3.png'),
            const SizedBox(height: 79),
            const CenterText(
              text: 'Error Occured!',
              color: Color(0xff1C2D57),
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
            const SizedBox(height: 16),
            const CenterText(
              text:
                  'May be bigfoot has broken this page.\nCome back to the homepage',
              color: Color(0xff666666),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(height: 66),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: CustomButton(
                colors: const [
                  Color(0xffFFA9A0),
                  Color(0xffFB5072),
                ],
                borderColor: const Color(0xff000000),
                text: 'Back to Homepage',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const Error404Page3();
                      },
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 15),
            TextButton(
              onPressed: () {},
              child: const CenterText(
                text: 'Visit our help center',
                color: Color(0xff1C2D57),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 77),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const CenterText(
                text: 'Back to Home',
                color: Color(0xff1C2D57),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
