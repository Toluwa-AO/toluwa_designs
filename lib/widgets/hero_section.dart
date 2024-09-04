// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:toluwa_designs/utils/responisiveness.dart';

class HeroView extends StatelessWidget {
  const HeroView({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double paddings = screenWidth / 10;

    return Container(
      width: screenWidth,
      height: screenHeight,
      padding: EdgeInsets.all(paddings),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/BACK.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Hey I’m',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: responsive.p1,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                        letterSpacing: -0.80,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: screenHeight / 40),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Toluwa\n',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: responsive.h2,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              letterSpacing: -2.88,
                            ),
                          ),
                          TextSpan(
                            text: 'Abimbola-Oladejo',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: responsive.h2,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              letterSpacing: -2.88,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: screenHeight / 40),
                    Opacity(
                      opacity: 0.50,
                      child: Text(
                        'UIUX Designer and Flutter Developer',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: responsive.h5,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -1.28,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: screenHeight / 40),
                    Container(
                      width: screenWidth / 5,
                      height: screenHeight / 11.5,
                      padding: EdgeInsets.all(screenWidth / 75),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Explore My Work',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF0D0D0D),
                            fontSize: responsive.p2,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.96,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
