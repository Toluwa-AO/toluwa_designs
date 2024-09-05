import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:toluwa_designs/utils/responisiveness.dart';

// The PortfolioCard widget, as previously defined
class PortfolioCard extends HookWidget {
  final String imageAssetPath;
  final String title;
  final VoidCallback onPressed;

  const PortfolioCard({
    Key? key,
    required this.imageAssetPath,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isHovered = useState(false);
    final responsive = Responsive(context);
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return MouseRegion(
      onEnter: (_) => isHovered.value = true,
      onExit: (_) => isHovered.value = false,
      child: GestureDetector(
        onTap: onPressed,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(screenWidth/20),
            boxShadow: isHovered.value
                ? [BoxShadow(color: Colors.black26, blurRadius: 10)]
                : [],
          ),
          child: Stack(
            children: [
              // Image Layer
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imageAssetPath,
                  fit: BoxFit.fill,
                  width: screenWidth / 3.5,
                  height: screenHeight / 2,
                  color: isHovered.value ? Colors.black.withOpacity(0.6) : null,
                  colorBlendMode: isHovered.value ? BlendMode.darken : null,
                ),
              ),
              // Text Layer (only visible when hovered)
              if (isHovered.value)
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: responsive.p2,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

