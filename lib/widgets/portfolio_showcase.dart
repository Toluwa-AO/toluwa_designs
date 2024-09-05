// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.fromLTRB(screenWidth/10, screenWidth/30, 0, 0),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Portfolio Showcase',
            style: TextStyle(
              color: Colors.white,
              fontSize: responsive.h3,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w900,
              letterSpacing: -2.88,
            ),
          ),
          SizedBox(height: screenHeight/20),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PortfolioCard(
                    imageAssetPath: 'assets/image1.png',
                    title: 'Photography Portfolio',
                    onPressed: () {
                      // Handle the tap event
                    },
                  ),
                  SizedBox(width: screenWidth/20),
                  PortfolioCard(
                    imageAssetPath: 'assets/image2.png',
                    title: 'Project 2: Website Redesign',
                    onPressed: () {
                      // Handle the tap event
                    },
                  ),
                  SizedBox(width: screenWidth/20 ),
                  PortfolioCard(
                    imageAssetPath: 'assets/image3.png',
                    title: 'Project 3: Branding and Logo Design',
                    onPressed: () {
                      // Handle the tap event
                    },
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
