import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_task_app/custom_widgets/custom_image/custom_network_image.dart';
import 'package:flutter_task_app/features/home/doamin/entities/categories_info_entity.dart';
import 'package:flutter_task_app/helpers/theme/app_colors.dart';
import 'package:flutter_task_app/helpers/theme/app_text_style.dart';

class CategoriesContainerWidget extends StatelessWidget {
  final CategoriesInfoEntity categories;
  const CategoriesContainerWidget({
    super.key, required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
      decoration: BoxDecoration(
         color: AppColor.mainAppColor,
         borderRadius: BorderRadius.circular(10),
      ),
        width: 106,
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                radius: 12,
                backgroundColor: AppColor.purpleColor,
                child:  Text(Random().nextInt(50).toString(),style: AppTextStyle.textW12B(context)),
              ),
            ),
            const SizedBox(height: 10,),
            CustomNetworkImage(
              radius: 10,
              imageUrl: categories.imageCategory,
              width: 50,
              height: 50,
              ),
            const SizedBox(height: 15.22,),
             Center(
               child: Text(categories.nameCategory,style:AppTextStyle.textD16R(context),
               overflow: TextOverflow.ellipsis,
               maxLines: 1,
               ),
             ),
          ],
        ),
      );
  }
}