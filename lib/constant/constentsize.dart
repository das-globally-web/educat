import 'package:flutter/material.dart';

double figmaHeight = 823; // Base Figma design height
double figmaWidth = 411;  // Base Figma design width

double getHeight(BuildContext context, double designHeight) {
  double screenHeight = MediaQuery.of(context).size.height;
  double heightScale = screenHeight / figmaHeight;

  return designHeight * heightScale;
}

double getWidth(BuildContext context, double designWidth) {
  double screenWidth = MediaQuery.of(context).size.width;
  double widthScale = screenWidth / figmaWidth;

  return designWidth * widthScale;
}

double getWidthScale(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  return screenWidth / figmaWidth;
}

double getHeightScale(BuildContext context) {
  double screenHeight = MediaQuery.of(context).size.height;
  return screenHeight / figmaHeight;
}
