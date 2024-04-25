import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task_app/features/home/presentation/views/details_category.dart';
import 'package:flutter_task_app/helpers/app_images/app_images.dart';
import 'package:flutter_task_app/helpers/theme/app_colors.dart';
import 'package:flutter_task_app/helpers/theme/app_text_style.dart';
import 'package:flutter_task_app/helpers/utils/navigator_methods.dart';

class AllOfferForCategoryWidget extends StatelessWidget {
  const AllOfferForCategoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return InkWell(
      onTap: () {
        NavigatorMethods.pushNamed(context, DetailsCategoryScreen.routeName);
      },
            child: Column(
              children: [
                const SizedBox(height: 19,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppColor.borderColor)
                
                      ),
                      child: Center(child: Image.asset(allOfferForCategoryItem[index].imageCategory)),
                      
                    ),
                    const SizedBox(width: 20,),
                     Padding(
                       padding: const EdgeInsets.only(top: 10),
                       child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(allOfferForCategoryItem[index].nameCategory,style: AppTextStyle.textD18M(context),),
                             SizedBox(height: 10.h,),
                           Row(
 
                            children: [
                             Icon(Icons.control_point_rounded,color: AppColor.purpleColor,),
                             SizedBox(width: 5.w,),
                             Text('${Random().nextInt(50)}% Online',style: AppTextStyle.textP12B(context).copyWith(color: AppColor.purpleColor),),
                         
                          ],)
                         ],
                       ),
                     )
                  ],
                ),
                //  const SizedBox(height: 19,),
              ],
            ),
          );
        },
        childCount: allOfferForCategoryItem.length, 
                 
    ),
                );
  }
}

class AllOfferForCategoryItem{
String nameCategory;
  String imageCategory;

  AllOfferForCategoryItem({required this.nameCategory,  required this.imageCategory});

}

List <AllOfferForCategoryItem> allOfferForCategoryItem = [
  AllOfferForCategoryItem(nameCategory: 'FreshDirect', imageCategory: AppImages.freshDirectImage),
  AllOfferForCategoryItem(nameCategory: 'BJ’s', imageCategory: AppImages.bJsImages),
  AllOfferForCategoryItem(nameCategory: 'Vitacost', imageCategory: AppImages.vitacostImage),
  AllOfferForCategoryItem(nameCategory: 'FreshDirect', imageCategory: AppImages.kingImage),
  AllOfferForCategoryItem(nameCategory: 'BurgerKing', imageCategory: AppImages.burgerKingImage),
  AllOfferForCategoryItem(nameCategory: 'Vitacost', imageCategory: AppImages.shipImage),
   AllOfferForCategoryItem(nameCategory: 'FreshDirect', imageCategory: AppImages.freshDirectImage),
  AllOfferForCategoryItem(nameCategory: 'BJ’s', imageCategory: AppImages.bJsImages),
  AllOfferForCategoryItem(nameCategory: 'Vitacost', imageCategory: AppImages.vitacostImage),
  AllOfferForCategoryItem(nameCategory: 'FreshDirect', imageCategory: AppImages.kingImage),
  AllOfferForCategoryItem(nameCategory: 'BurgerKing', imageCategory: AppImages.burgerKingImage),
  AllOfferForCategoryItem(nameCategory: 'Vitacost', imageCategory: AppImages.shipImage),
];