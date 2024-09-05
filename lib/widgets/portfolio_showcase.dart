import 'package:flutter/material.dart';
import 'package:toluwa_designs/utils/responisiveness.dart';
import 'package:toluwa_designs/widgets/protfolio_view.dart';

class PortfolioShowcase extends StatelessWidget {
  const PortfolioShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(screenWidth / 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Portfolio Showcase',
              style: TextStyle(
                color: Colors.white,
                fontSize: responsive.h2,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w900,
                letterSpacing: -2.88,
              ),
            ),
            SizedBox(height: screenHeight / 10),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    PortfolioCard(
                      imageAssetPath: 'assets/project1.png',
                      title: 'Project 1: Mobile App Design',
                      onPressed: () {
                        // Handle card tap
                      },
                    ),
                    SizedBox(width: screenWidth / 8),
                    PortfolioCard(
                      imageAssetPath: 'assets/project2.png',
                      title: 'Project 2: Website Redesign',
                      onPressed: () {
                        // Handle card tap
                      },
                    ),
                    SizedBox(width: screenWidth / 8),
                    PortfolioCard(
                      imageAssetPath: 'assets/project3.png',
                      title: 'Project 3: Branding and Logo Design',
                      onPressed: () {
                        // Handle card tap
                      },
                    ),
                    SizedBox(width: screenWidth / 8),
                    PortfolioCard(
                      imageAssetPath: 'assets/project4.png',
                      title: 'Project 4: E-commerce Platform',
                      onPressed: () {
                        // Handle card tap
                      },
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
