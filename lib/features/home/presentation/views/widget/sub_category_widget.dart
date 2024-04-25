import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task_app/features/home/presentation/views/details_category.dart';
import 'package:flutter_task_app/helpers/app_images/app_images.dart';
import 'package:flutter_task_app/helpers/theme/app_colors.dart';
import 'package:flutter_task_app/helpers/theme/app_text_style.dart';
import 'package:flutter_task_app/helpers/utils/navigator_methods.dart';

class SubCategoryWidget extends StatelessWidget {
  const SubCategoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
                  child: SizedBox(
    height: 120,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: subCategoryItem.length,
      itemBuilder: (BuildContext context, int index) {
        return  InkWell(
      onTap: () {
        NavigatorMethods.pushNamed(context, DetailsCategoryScreen.routeName);
      },
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                decoration: BoxDecoration(
                   color: AppColor.mainAppColor,
                   borderRadius: BorderRadius.circular(10),
                ),
                  width: 80,
                  height: 80,
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      
                        Center(child: SvgPicture.asset(subCategoryItem[index].imageCategory)),
                      
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Text(subCategoryItem[index].nameCategory,style: AppTextStyle.textD16R(context),)
            ],
          ),
        );
      },
    ),
                  ),
                );
  }
}
class SubCategory{
  final String nameCategory;
  final String imageCategory;
  SubCategory({required this.nameCategory,required this.imageCategory});
  
} 

List<SubCategory> subCategoryItem = [
  SubCategory(nameCategory: 'burger', imageCategory: AppImages.burgerIcon),
  SubCategory(nameCategory: 'Coffee', imageCategory: AppImages.cafeIcon),
  SubCategory(nameCategory: 'Shawerma', imageCategory: AppImages.shawermaIcon),
   SubCategory(nameCategory: 'burger', imageCategory: AppImages.burgerIcon),
  SubCategory(nameCategory: 'Coffee', imageCategory: AppImages.cafeIcon),
  SubCategory(nameCategory: 'Shawerma', imageCategory: AppImages.shawermaIcon),
   SubCategory(nameCategory: 'burger', imageCategory: AppImages.burgerIcon),
  SubCategory(nameCategory: 'Coffee', imageCategory: AppImages.cafeIcon),
  SubCategory(nameCategory: 'Shawerma', imageCategory: AppImages.shawermaIcon),
   SubCategory(nameCategory: 'burger', imageCategory: AppImages.burgerIcon),
  SubCategory(nameCategory: 'Coffee', imageCategory: AppImages.cafeIcon),
  SubCategory(nameCategory: 'Shawerma', imageCategory: AppImages.shawermaIcon),
  
];