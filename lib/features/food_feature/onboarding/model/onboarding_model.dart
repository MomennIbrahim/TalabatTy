import 'package:flutter/material.dart';

class OnBoardingModel {
  final String title;
  final int index;
  final String buttonTitle;
  final Color titleColor;
  final String image;
  final String subtitle;
  final Color color;

  OnBoardingModel({
    required this.title,
    required this.index,
    required this.buttonTitle,
    required this.titleColor,
    required this.color,
    required this.image,
    required this.subtitle,
  });
}