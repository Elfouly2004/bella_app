
import 'package:bella/core/utils/app%20images.dart';
import 'package:flutter/material.dart';


class CustomBanner extends StatelessWidget {
  const CustomBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return     ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Image.asset(AppImages.Banner,
        width: double.infinity,
        height:size.height*0.22,
        fit: BoxFit.cover,
      ),
    );
  }
}
