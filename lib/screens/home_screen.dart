import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:movie_neon_ui/components/masked_image.dart';
import 'package:movie_neon_ui/globalconst/constants.dart';
import 'package:movie_neon_ui/globalconst/global_const.dart';
import 'package:movie_neon_ui/models/movie_model.dart';
import 'package:movie_neon_ui/screens/movie_detail_screen.dart';
import 'package:movie_neon_ui/screens/onboarding_screen.dart';

import '../components/search_field_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 28, 28, 44),
      extendBody: true,
      body: SizedBox(
        width: PageSize.screenWidth,
        height: PageSize.screenHeight,
        child: Stack(
          children: [
            Positioned(
              top: -PageSize.height45 * 2,
              left: -PageSize.height45 * 2,
              child: Container(
                height: PageSize.height45 * 4,
                width: PageSize.height45 * 4,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.kGreenColor.withOpacity(0.5),
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
            Positioned(
              top: PageSize.screenHeight * 0.4,
              right: -PageSize.height45,
              child: Container(
                height: PageSize.height45 * 4,
                width: PageSize.height45 * 4,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.kPinkColor.withOpacity(0.5),
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
            Positioned(
              bottom: -PageSize.height45 * 2,
              left: -PageSize.height45 * 2,
              child: Container(
                height: PageSize.height45 * 4,
                width: PageSize.height45 * 4,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.kGreenColor.withOpacity(0.5),
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
              bottom: false,
              child: ListView(
                primary: true,
                children: [
                  SizedBox(
                    height: PageSize.height20,
                  ),
                  Text(
                    "What would you\nlike to watch?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: PageSize.font20 * 1.3,
                      color: Constants.kWhiteColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: PageSize.height20 * 1.7,
                  ),
                  SearchFieldWidget(
                    padding: EdgeInsets.symmetric(
                      horizontal: PageSize.width20,
                    ),
                  ),
                  SizedBox(
                    height: PageSize.height20 * 1.7,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: PageSize.width20),
                    child: Text(
                      "New Movies",
                      style: TextStyle(
                          color: Constants.kWhiteColor,
                          fontSize: PageSize.font20 / 1.1),
                    ),
                  ),
                  SizedBox(
                    height: PageSize.height20 * 1.7,
                  ),
                  SizedBox(
                    height: PageSize.height45 * 3.2,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: newMovies.length,
                      itemBuilder: (context, index) {
                        String mask;
                        if (index == 0) {
                          mask = Constants.kMaskFirstIndex;
                        } else if (index == newMovies.length - 1) {
                          mask = Constants.kMaskLastIndex;
                        } else {
                          mask = Constants.kMaskCenter;
                        }
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MovieDetailScreen(),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                                left: index == 0 ? PageSize.height20 : 0),
                            height: PageSize.height45 * 3,
                            width: PageSize.height45 * 3,
                            child: MaskedImage(
                                asset: newMovies[index].moviePoster,
                                mask: mask),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: PageSize.height20 * 1.7,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: PageSize.width20),
                    child: Text(
                      "Upcoming Movies",
                      style: TextStyle(
                          color: Constants.kWhiteColor,
                          fontSize: PageSize.font20 / 1.1),
                    ),
                  ),
                  SizedBox(
                    height: PageSize.height20 * 1.7,
                  ),
                  SizedBox(
                    height: PageSize.height45 * 3.2,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: upcomingMovies.length,
                      itemBuilder: (context, index) {
                        String mask;
                        if (index == 0) {
                          mask = Constants.kMaskFirstIndex;
                        } else if (index == upcomingMovies.length - 1) {
                          mask = Constants.kMaskLastIndex;
                        } else {
                          mask = Constants.kMaskCenter;
                        }
                        return InkWell(
                          child: Container(
                            margin: EdgeInsets.only(
                                left: index == 0 ? PageSize.height20 : 0),
                            height: PageSize.height45 * 3,
                            width: PageSize.height45 * 3,
                            child: MaskedImage(
                                asset: upcomingMovies[index].moviePoster,
                                mask: mask),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: PageSize.height20 * 3.2,
        width: PageSize.height20 * 3.2,
        padding: const EdgeInsets.all(4),
        margin: const EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Constants.kPinkColor.withOpacity(0.2),
              Constants.kGreenColor.withOpacity(0.2)
            ],
          ),
        ),
        child: Container(
          height: PageSize.height20 * 3,
          width: PageSize.height20 * 3,
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Constants.kPinkColor,
                Constants.kGreenColor,
              ],
            ),
          ),
          child: RawMaterialButton(
            onPressed: () {},
            shape: const CircleBorder(),
            fillColor: const Color(0xff404c57),
            child: SvgPicture.asset(Constants.kIconPlus),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: GlassmorphicContainer(
        width: PageSize.screenWidth,
        height: PageSize.height45 * 2,
        borderRadius: 0,
        linearGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Constants.kWhiteColor.withOpacity(0.1),
            Constants.kWhiteColor.withOpacity(0.1),
          ],
        ),
        border: 0,
        blur: 30,
        borderGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Constants.kPinkColor,
            Constants.kGreenColor,
          ],
        ),
        child: BottomAppBar(
          color: Colors.transparent,
          notchMargin: 4,
          elevation: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OnBoardingScreen()));
                  },
                  icon: SvgPicture.asset(Constants.kIconHome),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(Constants.kIconPlayOnTv),
                ),
              ),
              const Expanded(
                child: Text(""),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(Constants.kIconCategories),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(Constants.kIconDownload),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
