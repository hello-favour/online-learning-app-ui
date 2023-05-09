import 'package:flutter/material.dart';
import 'package:online_learning_app_ui/components/app_text.dart';
import 'package:online_learning_app_ui/constants/image_path.dart';
import 'package:online_learning_app_ui/themes/app_colors.dart';
import 'package:online_learning_app_ui/themes/app_spacing.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appWhite,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Column(
              children: [
                Image.asset(ImagePath.webDesign),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: AppColors.secondaryColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const AppText(
                                text: "Web Design\nCourse",
                                color: AppColors.appBlack,
                                fontWeight: FontWeight.bold,
                                size: 25,
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const AppText(
                                    text: "\$25,99",
                                    color: AppColors.primaryColor,
                                    size: 25,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Row(
                                    children: const [
                                      AppText(
                                        text: "4.3",
                                        color: AppColors.appBlack,
                                        size: 20,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: AppColors.primaryColor,
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 30),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 100,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    decoration: BoxDecoration(
                                      color: AppColors.appWhite,
                                      borderRadius: AppSpacing.appRadius,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        AppText(
                                          text: "24",
                                          color: AppColors.primaryColor,
                                          size: 18,
                                        ),
                                        AppText(
                                          text: "Classes",
                                          color: Colors.black54,
                                          size: 16,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    decoration: BoxDecoration(
                                      color: AppColors.appWhite,
                                      borderRadius: AppSpacing.appRadius,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        AppText(
                                          text: "2 Hours",
                                          color: AppColors.primaryColor,
                                          size: 18,
                                        ),
                                        AppText(
                                          text: "Times",
                                          color: Colors.black54,
                                          size: 16,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    decoration: BoxDecoration(
                                      color: AppColors.appWhite,
                                      borderRadius: AppSpacing.appRadius,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        AppText(
                                          text: "100",
                                          color: AppColors.primaryColor,
                                          size: 18,
                                        ),
                                        AppText(
                                          text: "Seats",
                                          color: Colors.black54,
                                          size: 16,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 30),
                              const Text(
                                "Join the web course, in this course, you will learn Html, Css, Javascript, flutter, dart, bootstrap, php or java the for the backend",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black54,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              const SizedBox(height: 30),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width / 1.3,
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: const BoxDecoration(
                          color: AppColors.primaryColor,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 6,
                              spreadRadius: 4,
                              color: Colors.black12,
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.favorite_rounded,
                          color: AppColors.appWhite,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 50,
              width: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Icon(
                Icons.cancel,
                color: Colors.black45,
                size: 25,
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 1.5,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: AppSpacing.appRadius,
              ),
              child: const Center(
                child: AppText(
                  text: "Join Course",
                  color: AppColors.appWhite,
                  size: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
