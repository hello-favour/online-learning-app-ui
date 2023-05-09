import 'package:flutter/material.dart';
import 'package:online_learning_app_ui/components/app_text.dart';
import 'package:online_learning_app_ui/constants/image_path.dart';
import 'package:online_learning_app_ui/screens/course_screen.dart';
import 'package:online_learning_app_ui/themes/app_colors.dart';

class WebDesignScreen extends StatefulWidget {
  const WebDesignScreen({super.key});

  @override
  State<WebDesignScreen> createState() => _WebDesignScreenState();
}

class _WebDesignScreenState extends State<WebDesignScreen> {
  List imageCourses = [
    ImagePath.webDesign,
    ImagePath.appDev,
    ImagePath.appDev,
    ImagePath.ecommerce,
  ];

  List courses = [
    "Web Design",
    "App Development",
    "UI Design",
    "Ecommerce",
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const CourseScreen();
        }));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppText(
              text: "Web Design",
              color: AppColors.appBlack,
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppText(
                  text: "24 Lesson",
                  color: AppColors.appBlack,
                ),
                Row(
                  children: const [
                    AppText(
                      text: "4.3",
                      color: AppColors.appBlack,
                    ),
                    Icon(
                      Icons.star,
                      color: AppColors.primaryColor,
                      size: 15,
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imageCourses[index],
                  height: 90,
                ),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
