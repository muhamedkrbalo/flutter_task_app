import 'package:flutter/material.dart';
import 'package:flutter_task_app/helpers/theme/app_colors.dart';
import 'package:flutter_task_app/helpers/theme/app_text_style.dart';

class ButtonAvailableAndMenuAndAboutWidget extends StatelessWidget {
  const ButtonAvailableAndMenuAndAboutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          padding: const EdgeInsets.symmetric(
              horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColor.mainAppColor,
          ),
          child: Center(
            child: Text(
              'Available Offers',
              style: AppTextStyle.textP12B(context),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          padding: const EdgeInsets.symmetric(
              horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  color: AppColor.borderButtonColor)),
          child: Center(
            child: Text(
              'Menu',
              style: AppTextStyle.textP12B(context)
                  .copyWith(color: AppColor.borderButtonColor),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          padding: const EdgeInsets.symmetric(
              horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  color: AppColor.borderButtonColor)),
          child: Center(
            child: Text(
              'About',
              style: AppTextStyle.textP12B(context)
                  .copyWith(color: AppColor.borderButtonColor),
            ),
          ),
        )
      ],
    );
  }
}


