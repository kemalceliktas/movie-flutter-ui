import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_neon_ui/components/masked_image.dart';
import 'package:movie_neon_ui/globalconst/constants.dart';
import 'package:movie_neon_ui/globalconst/global_const.dart';
import 'package:movie_neon_ui/screens/home_screen.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 28, 28, 44),
      body: Container(
        width: PageSize.screenWidth,
        height: PageSize.screenHeight,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.black,
            Color.fromARGB(255, 28, 28, 44),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: PageSize.screenHeight * 0.4,
                width: PageSize.screenWidth,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/movie-posters/img-eternals.jpeg"),
                  ),
                ),
              ),
            ),
            Positioned(
              top: PageSize.screenHeight * 0.05,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: PageSize.height20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                      },
                      child: Container(
                        height: PageSize.height45,
                        width: PageSize.height45,
                        padding: EdgeInsets.all(PageSize.height10),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(PageSize.height20 * 5),
                            border: Border.all(width: 3, color: Colors.white.withOpacity(0.5))),
                        child: SvgPicture.asset("assets/svg/icon-back.svg"),
                      ),
                    ),
                    Container(
                      height: PageSize.height45,
                      width: PageSize.height45,
                      padding: EdgeInsets.all(PageSize.height10),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(PageSize.height20 * 5),
                          border: Border.all(width: 3, color: Colors.white.withOpacity(0.5))),
                      child: SvgPicture.asset("assets/svg/icon-menu.svg"),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: PageSize.height10,
              top: PageSize.screenHeight * 0.42,
              child: Container(
                width: PageSize.height20 * 3,
                height: PageSize.height20 * 3,
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFfe53bb),
                      Color(0xFF09fbd3),
                    ],
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Constants.kGreyColor),
                  child: Icon(
                    Icons.play_arrow,
                    color: Constants.kWhiteColor,
                    size: PageSize.font26,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: PageSize.screenHeight * 0.5,
                transform: Matrix4.translationValues(
                    0, -PageSize.screenHeight * 0.05, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: PageSize.screenWidth * 0.7,
                      child: Column(
                        children: [
                          Text(
                            "Eternals",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: PageSize.font26,
                              fontWeight: FontWeight.w700,
                              color: Constants.kWhiteColor.withOpacity(0.8),
                            ),
                          ),
                          SizedBox(
                            height: PageSize.height15,
                          ),
                          Text(
                            "2021Action-Adventure-Fantasy-2h36m",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: PageSize.font26/1.7,
                              fontWeight: FontWeight.w700,
                              color: Constants.kWhiteColor.withOpacity(0.8),
                            ),
                          ),
                          SizedBox(
                            height: PageSize.height15,
                          ),
                          RatingBar.builder(
                            itemSize: PageSize.height15,
                            initialRating: 3,
                            minRating: 1,
                            itemCount: 5,
                            direction: Axis.horizontal,
                            itemBuilder: (context, index) => Icon(
                              Icons.star,
                              color: Constants.kYellowColor,
                            ),
                            itemPadding: EdgeInsets.symmetric(horizontal: 1),
                            onRatingUpdate: (value) {
                              print(value.toString());
                            },
                            unratedColor: Constants.kWhiteColor,
                          ),
                          Text(
                            "The saga of the Eternals, a race of\nimmortal beings who lived on Earth\nand shaped its history and\ncivilizations.",
                            textAlign: TextAlign.center,
                            maxLines: 4,
                            style: TextStyle(
                              fontSize: PageSize.font26 / 2,
                              color: Constants.kWhiteColor.withOpacity(0.75),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: PageSize.screenHeight * 0.01,
                    ),
                    Container(
                      height: 2,
                      width: PageSize.screenWidth * 0.8,
                      color: Constants.kWhiteColor.withOpacity(0.15),
                    ),
                    SizedBox(
                      height: PageSize.screenHeight * 0.01,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: PageSize.height20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Casts",
                                style: TextStyle(
                                  color: Constants.kWhiteColor,
                                  fontSize: PageSize.font20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: PageSize.height15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Constants.kWhiteColor,
                                minRadius: PageSize.height15,
                                maxRadius: PageSize.height20 * 1.2,
                                backgroundImage: NetworkImage(
                                  "https://m.media-amazon.com/images/M/MV5BODg3MzYwMjE4N15BMl5BanBnXkFtZTcwMjU5NzAzNw@@._V1_.jpg",
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  constraints: BoxConstraints(
                                    maxHeight: PageSize.height45,
                                    maxWidth: PageSize.height45 * 3,
                                  ),
                                  transform:
                                      Matrix4.translationValues(-6, 0, 0),
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      MaskedImage(
                                          asset: Constants.kMaskCast,
                                          mask: Constants.kMaskCast),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: PageSize.height15,
                                        ),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Angelina\nJolie",
                                            maxLines: 2,
                                            style: TextStyle(
                                              color: Constants.kWhiteColor,
                                              fontSize: PageSize.font26 / 2,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Constants.kWhiteColor,
                                minRadius: PageSize.height15,
                                maxRadius: PageSize.height20 * 1.2,
                                backgroundImage: NetworkImage(
                                  "https://m.media-amazon.com/images/M/MV5BODg3MzYwMjE4N15BMl5BanBnXkFtZTcwMjU5NzAzNw@@._V1_.jpg",
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  constraints: BoxConstraints(
                                    maxHeight: PageSize.height45,
                                    maxWidth: PageSize.height45 * 3,
                                  ),
                                  transform:
                                      Matrix4.translationValues(-6, 0, 0),
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      MaskedImage(
                                          asset: Constants.kMaskCast,
                                          mask: Constants.kMaskCast),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: PageSize.height15,
                                        ),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Angelina\nJolie",
                                            maxLines: 2,
                                            style: TextStyle(
                                              color: Constants.kWhiteColor,
                                              fontSize: PageSize.font26 / 2,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: PageSize.height10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Constants.kWhiteColor,
                                minRadius: PageSize.height15,
                                maxRadius: PageSize.height20 * 1.2,
                                backgroundImage: NetworkImage(
                                  "https://m.media-amazon.com/images/M/MV5BODg3MzYwMjE4N15BMl5BanBnXkFtZTcwMjU5NzAzNw@@._V1_.jpg",
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  constraints: BoxConstraints(
                                    maxHeight: PageSize.height45,
                                    maxWidth: PageSize.height45 * 3,
                                  ),
                                  transform:
                                      Matrix4.translationValues(-6, 0, 0),
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      MaskedImage(
                                          asset: Constants.kMaskCast,
                                          mask: Constants.kMaskCast),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: PageSize.height15,
                                        ),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Angelina\nJolie",
                                            maxLines: 2,
                                            style: TextStyle(
                                              color: Constants.kWhiteColor,
                                              fontSize: PageSize.font26 / 2,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Constants.kWhiteColor,
                                minRadius: PageSize.height15,
                                maxRadius: PageSize.height20 * 1.2,
                                backgroundImage: NetworkImage(
                                  "https://m.media-amazon.com/images/M/MV5BODg3MzYwMjE4N15BMl5BanBnXkFtZTcwMjU5NzAzNw@@._V1_.jpg",
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  constraints: BoxConstraints(
                                    maxHeight: PageSize.height45,
                                    maxWidth: PageSize.height45 * 3,
                                  ),
                                  transform:
                                      Matrix4.translationValues(-6, 0, 0),
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      MaskedImage(
                                          asset: Constants.kMaskCast,
                                          mask: Constants.kMaskCast),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: PageSize.height15,
                                        ),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Angelina\nJolie",
                                            maxLines: 2,
                                            style: TextStyle(
                                              color: Constants.kWhiteColor,
                                              fontSize: PageSize.font26 / 2,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
