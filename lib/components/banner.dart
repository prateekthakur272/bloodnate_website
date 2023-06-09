import 'package:bloodnate_website/constants_and_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageBanner extends StatelessWidget {
  const ImageBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Stack(
        children: [
          AspectRatio(
              aspectRatio: isDesktop(context) ? 5 / 2 : 1 / 1,
              child: SvgPicture.asset(
                'assets/banner.svg',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              )),
              Container(color: Colors.black54),
              Center(child: Text(tagLine,style: const TextStyle(fontSize: 48,fontWeight: FontWeight.bold,color: Colors.white,),textAlign: TextAlign.center,),)
        ],
      ),
    );
  }
}
