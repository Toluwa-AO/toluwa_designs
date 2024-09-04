import 'package:flutter/material.dart';
import 'package:toluwa_designs/utils/responisiveness.dart';

class AboutMeView extends StatelessWidget {
  const AboutMeView({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      height: screenHeight,
      padding: EdgeInsets.all(screenWidth / 10), // Responsive padding
      decoration: BoxDecoration(color: Color(0xFF0D0D0D)),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center, // Center content within the Row
        crossAxisAlignment: CrossAxisAlignment.center, // Align content to the center vertically
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center, // Center the text vertically
              children: [
                Text(
                  'About Me',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: responsive.h2,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w900,
                    letterSpacing: -2.88,
                  ),
                ),
                SizedBox(height: screenHeight / 40),
                Opacity(
                  opacity: 0.60,
                  child: Text(
                    'Hello, I’m Toluwa Abimbola-Oladejo, a UI/UX designer based in Ibadan, Nigeria, with a background in programming and Flutter development. My journey began in software development, but my passion for creating user-centered designs led me to dive deep into UI/UX. Now, I combine my design expertise with technical skills to craft intuitive, cross-platform applications that are both visually appealing and functional.\nAs an Electrical and Electronics Engineering student at Covenant University, I’ve worked with diverse clients, consistently delivering designs that exceed expectations. I’m excited about the opportunity to collaborate and create exceptional user experiences.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: responsive.p2,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.96,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight / 40),
                Container(
                  width: screenWidth / 2,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: screenWidth / 5,
                        height: screenHeight / 13.5,
                        padding: EdgeInsets.all(screenWidth / 90),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.33),
                        ),
                        child: Center(
                          child: Text(
                            'Download Resume',
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
              ],
            ),
          ),
          SizedBox(width: screenWidth / 50),
          Flexible(
            flex: 1,
            child: Container(
              width: screenWidth / 2,
              height: screenHeight / 1.2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/about me.png'),
                  fit: BoxFit.scaleDown,
                ),
                borderRadius: BorderRadius.circular(screenWidth/20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
