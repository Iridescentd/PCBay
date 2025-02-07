///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/
library;

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';

class splashscreen extends StatelessWidget {
  const splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
              context, '/login'); // Navigate to the login screen
        },
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Opacity(
              opacity: 0.85,
              child:

                  ///***If you have exported images you must have to copy those images in assets/images directory.
                  Image(
                image: const AssetImage(
                    "assets/images/gaming-computer-6903836_1920.jpg"),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child:

                  ///***If you have exported images you must have to copy those images in assets/images directory.
                  Image(
                image: AssetImage("assets/images/Resized_white.png"),
                height: 100,
                width: 140,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
