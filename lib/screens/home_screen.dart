import 'package:flutter/material.dart';
import 'package:online_learning_app_ui/components/app_text.dart';
import 'package:online_learning_app_ui/screens/app_dev_screen.dart';
import 'package:online_learning_app_ui/components/web_course.dart';
import 'package:online_learning_app_ui/screens/ecommerce_screen.dart';
import 'package:online_learning_app_ui/screens/ui_design_screen.dart';
import 'package:online_learning_app_ui/screens/web_design_screen.dart';
import 'package:online_learning_app_ui/themes/app_colors.dart';
import 'package:online_learning_app_ui/constants/image_path.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List categories = [
    "UI/UX",
    "Coding",
    "App Design",
    "Basics",
  ];

  List courses = [
    "Web Design",
    "App Development",
    "UI Design",
    "Ecommerce",
  ];

  List screenPages = [
    const UiDesignScreen(),
    const WebDesignScreen(),
    const AppDevelopmentScreen(),
    const EcommerceScreen(),
  ];

  List imageCourses = [
    ImagePath.webDesign,
    ImagePath.appDev,
    ImagePath.appDev,
    ImagePath.ecommerce,
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.appWhite,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          AppText(
                            text: "Choose Your",
                            size: 20,
                            color: AppColors.appBlack,
                          ),
                          SizedBox(height: 5),
                          AppText(
                            text: "Desire Course",
                            size: 25,
                            color: AppColors.appBlack,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          ImagePath.profile2,
                          height: 50,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search for course",
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: AppText(
                    text: "Category",
                    color: Colors.black54,
                    size: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 42,
                  child: ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(left: 20),
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                          color: index == 0 ? AppColors.primaryColor : null,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: AppColors.primaryColor,
                          ),
                        ),
                        child: Center(
                          child: AppText(
                            text: categories[index],
                            color: index == 0
                                ? Colors.white
                                : AppColors.primaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 110,
                  child: ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 20),
                              padding:
                                  const EdgeInsets.fromLTRB(100, 10, 15, 10),
                              decoration: BoxDecoration(
                                color: AppColors.secondaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AppText(
                                    text: courses[index],
                                    color: AppColors.appBlack,
                                    size: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    children: [
                                      const AppText(
                                        text: "24 Lesson",
                                        color: AppColors.appBlack,
                                      ),
                                      const SizedBox(width: 20),
                                      Row(
                                        children: const [
                                          Text("4.3"),
                                          Icon(
                                            Icons.star,
                                            color: AppColors.primaryColor,
                                            size: 15,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const AppText(
                                        text: "\$25",
                                        color: AppColors.primaryColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      const SizedBox(width: 40),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          padding: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                            color: AppColors.primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: const Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 17,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 60),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    imageCourses[index],
                                    height: 80,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: AppText(
                    text: "Popular Course",
                    color: AppColors.appBlack,
                    size: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                GridView.builder(
                  itemCount: screenPages.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    // screenPages pages = screenPages[index];
                    return screenPages[index];
                    // InkWell(
                    //   onTap: () {
                    //     Navigator.push(context,
                    //         MaterialPageRoute(builder: (context) {
                    //       return const CourseScreen();
                    //     }));
                    //   },
                    //   child: Container(
                    //     margin: const EdgeInsets.symmetric(
                    //         vertical: 10, horizontal: 15),
                    //     padding: const EdgeInsets.all(10),
                    //     decoration: BoxDecoration(
                    //       color: AppColors.secondaryColor,
                    //       borderRadius: BorderRadius.circular(10),
                    //     ),
                    //     child: Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         AppText(
                    //           text: courses[index],
                    //           color: AppColors.appBlack,
                    //           fontWeight: FontWeight.w500,
                    //         ),
                    //         const SizedBox(height: 10),
                    //         Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           children: [
                    //             const AppText(
                    //               text: "24 Lesson",
                    //               color: AppColors.appBlack,
                    //             ),
                    //             Row(
                    //               children: const [
                    //                 AppText(
                    //                   text: "4.3",
                    //                   color: AppColors.appBlack,
                    //                 ),
                    //                 Icon(
                    //                   Icons.star,
                    //                   color: AppColors.primaryColor,
                    //                   size: 15,
                    //                 ),
                    //               ],
                    //             ),
                    //           ],
                    //         ),
                    //         Padding(
                    //           padding: const EdgeInsets.all(10),
                    //           child: ClipRRect(
                    //             borderRadius: BorderRadius.circular(10),
                    //             child: Image.asset(
                    //               imageCourses[index],
                    //               height: 90,
                    //             ),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
