// ignore: file_names
import 'package:flutter/material.dart';
import 'package:toluwa_designs/widgets/about_me.dart';
import 'package:toluwa_designs/widgets/contact_me.dart';
import 'package:toluwa_designs/widgets/hero_section.dart';
import 'package:toluwa_designs/widgets/portfolio_showcase.dart';
import 'package:toluwa_designs/widgets/services.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeroView(),
            AboutMeView(),
            PortfolioShowcase(),
            ServicesView(),
            ContactMeView(),
          ],
        ),
      ),
    );
  }
}