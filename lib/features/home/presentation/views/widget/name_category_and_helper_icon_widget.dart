import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task_app/helpers/app_images/app_images.dart';
import 'package:flutter_task_app/helpers/theme/app_text_style.dart';

class NameCategoryAndHelperIconWidget extends StatelessWidget {
  const NameCategoryAndHelperIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Food',
            style: AppTextStyle.textD10B(context),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Canton - Amman',
            style: AppTextStyle.textD23B(context),
          ),
          RichText(
            text: TextSpan(
              text: 'Chinese # Chicken # Salads # Soup ',
              style: AppTextStyle.textD16R(context)
                  .copyWith(fontSize: 13),
              children: <TextSpan>[
                TextSpan(
                    text: '  .  ',
                    style: AppTextStyle.textD23B(context)),
                TextSpan(
                  text: 'All tags',
                  style: AppTextStyle.textP10R(context).copyWith(
                      decoration: TextDecoration.underline,
                      fontSize: 13),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SvgPicture.asset(AppImages.followIcon),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Follow',
                    style: AppTextStyle.textD10R(context),
                  )
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset(AppImages.callIcon),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Call',
                    style: AppTextStyle.textD10R(context),
                  )
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset(AppImages.emailIcon),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    'Email',
                    style: AppTextStyle.textD10R(context),
                  )
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset(AppImages.locationIcon),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Directions',
                    style: AppTextStyle.textD10R(context),
                  )
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset(AppImages.reportIcon),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Report',
                    style: AppTextStyle.textD10R(context),
                  )
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset(AppImages.shareIcon),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Share',
                    style: AppTextStyle.textD10R(context),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

