import 'package:flutter/material.dart';

class VideoHomePage extends StatefulWidget {
  const VideoHomePage({super.key});

  @override
  State<VideoHomePage> createState() => _VideoHomePageState();
}

class _VideoHomePageState extends State<VideoHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 400,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/home/vid.PNG'),
                fit: BoxFit.cover),
          ),
        )
        // Row(
        //   children: [
        //     Stack(
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.only(left: 25),
        //           child: Container(
        //               height: 117,
        //               width: 170,
        //               decoration: const BoxDecoration(
        //                   image: DecorationImage(
        //                       image:
        //                           AssetImage("assets/images/home/video.png"))),
        //               child: Padding(
        //                 padding: const EdgeInsets.all(35),
        //                 child: Container(
        //                   decoration: const BoxDecoration(
        //                     shape: BoxShape.circle,
        //                     color: Colors.white,
        //                   ),
        //                   child: Padding(
        //                     padding: const EdgeInsets.all(15),
        //                     child: SvgPicture.asset(
        //                       "assets/icons/Polygon 1.svg",
        //                     ),
        //                   ),
        //                 ),
        //               )),
        //         ),
        //       ],
        //     ),
        //     Stack(
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.only(left: 25),
        //           child: Container(
        //               height: 117,
        //               width: 170,
        //               decoration: const BoxDecoration(
        //                   image: DecorationImage(
        //                       image:
        //                           AssetImage("assets/images/home/video.png"))),
        //               child: Padding(
        //                 padding: const EdgeInsets.all(35),
        //                 child: Container(
        //                   decoration: const BoxDecoration(
        //                     shape: BoxShape.circle,
        //                     color: Colors.white,
        //                   ),
        //                   child: Padding(
        //                     padding: const EdgeInsets.all(15),
        //                     child: SvgPicture.asset(
        //                       "assets/icons/Polygon 1.svg",
        //                     ),
        //                   ),
        //                 ),
        //               )),
        //         ),
        //       ],
        //     ),
        //   ],
        // ),
        // const SizedBox(
        //   height: 20,
        // ),
        // Row(
        //   children: [
        //     Stack(
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.only(left: 25),
        //           child: Container(
        //               height: 117,
        //               width: 170,
        //               decoration: const BoxDecoration(
        //                   image: DecorationImage(
        //                       image:
        //                           AssetImage("assets/images/home/video.png"))),
        //               child: Padding(
        //                 padding: const EdgeInsets.all(35),
        //                 child: Container(
        //                   decoration: const BoxDecoration(
        //                     shape: BoxShape.circle,
        //                     color: Colors.white,
        //                   ),
        //                   child: Padding(
        //                     padding: const EdgeInsets.all(15),
        //                     child: SvgPicture.asset(
        //                       "assets/icons/Polygon 1.svg",
        //                     ),
        //                   ),
        //                 ),
        //               )),
        //         ),
        //       ],
        //     ),
        //     Stack(
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.only(left: 25),
        //           child: Container(
        //               height: 117,
        //               width: 170,
        //               decoration: const BoxDecoration(
        //                   image: DecorationImage(
        //                       image:
        //                           AssetImage("assets/images/home/video.png"))),
        //               child: Padding(
        //                 padding: const EdgeInsets.all(35),
        //                 child: Container(
        //                   decoration: const BoxDecoration(
        //                     shape: BoxShape.circle,
        //                     color: Colors.white,
        //                   ),
        //                   child: Padding(
        //                     padding: const EdgeInsets.all(15),
        //                     child: SvgPicture.asset(
        //                       "assets/icons/Polygon 1.svg",
        //                     ),
        //                   ),
        //                 ),
        //               )),
        //         ),
        //       ],
        //     ),
        //   ],
        // ),
        // const SizedBox(
        //   height: 30,
        // ),
        // Row(
        //   children: [
        //     Stack(
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.only(left: 25),
        //           child: Container(
        //               height: 117,
        //               width: 170,
        //               decoration: const BoxDecoration(
        //                   image: DecorationImage(
        //                       image:
        //                           AssetImage("assets/images/home/video.png"))),
        //               child: Padding(
        //                 padding: const EdgeInsets.all(35),
        //                 child: Container(
        //                   decoration: const BoxDecoration(
        //                     shape: BoxShape.circle,
        //                     color: Colors.white,
        //                   ),
        //                   child: Padding(
        //                     padding: const EdgeInsets.all(15),
        //                     child: SvgPicture.asset(
        //                       "assets/icons/Polygon 1.svg",
        //                     ),
        //                   ),
        //                 ),
        //               )),
        //         ),
        //       ],
        //     ),
        //     Stack(
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.only(left: 25),
        //           child: Container(
        //               height: 117,
        //               width: 170,
        //               decoration: const BoxDecoration(
        //                   image: DecorationImage(
        //                       image:
        //                           AssetImage("assets/images/home/video.png"))),
        //               child: Padding(
        //                 padding: const EdgeInsets.all(35),
        //                 child: Container(
        //                   decoration: const BoxDecoration(
        //                     shape: BoxShape.circle,
        //                     color: Colors.white,
        //                   ),
        //                   child: Padding(
        //                     padding: const EdgeInsets.all(15),
        //                     child: SvgPicture.asset(
        //                       "assets/icons/Polygon 1.svg",
        //                     ),
        //                   ),
        //                 ),
        //               )),
        //         ),
        //       ],
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
