import 'package:flutter/material.dart';

class Responsive {
  // Breakpoints for different screen sizes
  static const double largeDesktopBreakpoint = 1400;
  static const double desktopBreakpoint = 1024;
  static const double largeTabletBreakpoint = 1044;
  static const double tabletBreakpoint = 768;
  static const double mobileBreakpoint = 360;

  final BuildContext context;

  Responsive(this.context);

  // Determine the screen size category
  bool get isLargeDesktop => MediaQuery.of(context).size.width >= largeDesktopBreakpoint;
  bool get isDesktop => MediaQuery.of(context).size.width >= desktopBreakpoint && MediaQuery.of(context).size.width < largeDesktopBreakpoint;
  bool get isLargeTablet => MediaQuery.of(context).size.width >= largeTabletBreakpoint && MediaQuery.of(context).size.width < desktopBreakpoint;
  bool get isTablet => MediaQuery.of(context).size.width >= tabletBreakpoint && MediaQuery.of(context).size.width < largeTabletBreakpoint;
  bool get isMobile => MediaQuery.of(context).size.width < tabletBreakpoint;

  // Typography sizes based on screen size
  double get h1 => isLargeDesktop ? 72 : isDesktop ? 64 : isLargeTablet ? 56 : isTablet ? 48 : 36;
  double get h2 => isLargeDesktop ? 60 : isDesktop ? 48 : isLargeTablet ? 40 : isTablet ? 36 : 28;
  double get h3 => isLargeDesktop ? 48 : isDesktop ? 40 : isLargeTablet ? 32 : isTablet ? 30 : 24;
  double get h4 => isLargeDesktop ? 36 : isDesktop ? 32 : isLargeTablet ? 28 : isTablet ? 24 : 20;
  double get h5 => isLargeDesktop ? 30 : isDesktop ? 28 : isLargeTablet ? 22 : isTablet ? 20 : 18;
  double get p1 => isLargeDesktop ? 24 : isDesktop ? 22 : isLargeTablet ? 16 : isTablet ? 16 : 14;
  double get p2 => isLargeDesktop ? 20 : isDesktop ? 18 : isLargeTablet ? 14 : isTablet ? 14 : 12;

  // Padding based on screen size
  double get padding => isLargeDesktop ? 40 : isDesktop ? 32 : isLargeTablet ? 28 : isTablet ? 24 : 16;

  // Color scheme (example)
  Color get primaryColor => const Color(0xFF00A8E8);
  Color get secondaryColor => const Color(0xFF00171F);
  Color get accentColor => const Color(0xFFEFF1F3);
}