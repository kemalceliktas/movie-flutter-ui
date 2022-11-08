import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_neon_ui/components/custom_outline.dart';
import 'package:movie_neon_ui/globalconst/constants.dart';
import 'package:movie_neon_ui/globalconst/global_const.dart';
import 'package:movie_neon_ui/screens/home_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 28, 44),
      extendBody: true,
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            Positioned(
              top: -PageSize.height45 * 1.7,
              left: -PageSize.height45 * 1.7,
              child: Container(
                height: PageSize.height45 * 4,
                width: PageSize.height45 * 4,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.kPinkColor,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 200,
                    sigmaY: 200,
                  ),
                  child: Container(
                    height: 166,
                    width: 166,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.3,
              right: -PageSize.height45 * 2,
              child: Container(
                height: PageSize.height45 * 4,
                width: PageSize.height45 * 4,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.kGreenColor,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 200,
                    sigmaY: 200,
                  ),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: PageSize.height45,
                  ),
                  CustomOutline(
                    strokeWidth: 4,
                    radius: screenWidth * 0.8,
                    width: screenWidth * 0.8,
                    height: screenWidth * 0.8,
                    padding: EdgeInsets.all(4),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Constants.kPinkColor,
                        Constants.kPinkColor.withOpacity(0),
                        Constants.kGreenColor,
                        Constants.kGreenColor.withOpacity(0.1),
                      ],
                      stops: [0.2, 0.4, 0.6, 1],
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          alignment: Alignment.bottomLeft,
                          image: AssetImage("assets/avatar.png"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.09,
                  ),
                  Text(
                    "Watch movies\nWhere you are!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: PageSize.font26,
                      fontWeight: FontWeight.w700,
                      color: Constants.kWhiteColor.withOpacity(0.85),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.05,
                  ),
                  Text(
                    "Download and watch offline\nwherever you are",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: PageSize.font20 / 1.4,
                      color: Constants.kWhiteColor.withOpacity(0.7),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  CustomOutline(
                    strokeWidth: 3,
                    radius: PageSize.width20,
                    width: PageSize.height45 * 4,
                    height: PageSize.height20 * 1.4,
                    padding: const EdgeInsets.all(3),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Constants.kPinkColor,
                        Constants.kGreenColor,
                      ],
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Constants.kPinkColor.withOpacity(0.5),
                            Constants.kGreenColor.withOpacity(0.5),
                          ],
                        ),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                        },
                        child: Text(
                          "Go To Homepage",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) {
                        return Container(
                          height: PageSize.height15 / 2,
                          width: PageSize.height15 / 2,
                          margin: EdgeInsets.symmetric(
                              horizontal: PageSize.width10 / 2),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: index == 0
                                  ? Constants.kGreenColor
                                  : Constants.kWhiteColor.withOpacity(0.2)),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: screenHeight*0.01,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
