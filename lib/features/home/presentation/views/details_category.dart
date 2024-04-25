import 'package:flutter/material.dart';
import 'package:flutter_task_app/custom_widgets/page_container/page_container.dart';
import 'package:flutter_task_app/features/home/presentation/views/widget/alzarq_lock_offer_widget.dart';
import 'package:flutter_task_app/features/home/presentation/views/widget/button_available_and_menu_about.dart';
import 'package:flutter_task_app/features/home/presentation/views/widget/header_image_and_back_icon.dart';
import 'package:flutter_task_app/features/home/presentation/views/widget/irbed_lock_offer_widget.dart';
import 'package:flutter_task_app/features/home/presentation/views/widget/name_category_and_helper_icon_widget.dart';
import 'package:flutter_task_app/features/home/presentation/views/widget/rating_widget.dart';
import 'package:flutter_task_app/features/home/presentation/views/widget/unlock_offer_text_and_icon_widget.dart';
import 'package:flutter_task_app/features/home/presentation/views/widget/unlock_offer_widget.dart';
import 'package:flutter_task_app/helpers/theme/app_colors.dart';
import 'package:flutter_task_app/helpers/theme/app_text_style.dart';

class DetailsCategoryScreen extends StatelessWidget {
  static const String routeName = 'DetailsCategoryScreen';
  const DetailsCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      bottom: false,
      top: false,
      statusBarTheme: StatusBarTheme.light,
      child: Scaffold(
        body: SingleChildScrollView(
          // padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderImageAndBackIcon(),
              const SizedBox(
                height: 20,
              ),
              const RatingWidget(),
              const NameCategoryAndHelperIconWidget(),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 8,
                width: MediaQuery.of(context).size.width,
                color: AppColor.lightGreyColor,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                   const ButtonAvailableAndMenuAndAboutWidget(),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Text(
                          'Available Offers',
                          style: AppTextStyle.textD18M(context),
                        ),
                        const Spacer(),
                        Text(
                          'How to use offers ',
                          style: AppTextStyle.textL14R(context),
                        ),
                        Center(
                          child: Icon(
                            Icons.help_outline,
                            color: AppColor.lightColor,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Amman',
                          style: AppTextStyle.textD16R(context),
                        ),
                        Icon(
                          Icons.keyboard_arrow_up_sharp,
                          color: AppColor.darkColor,
                          size: 30,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const UnlockOfferTextAndIconWidget(),
                    const SizedBox(
                      height: 20,
                    ),
                    const UnlockOfferWidget(),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Irbed',
                          style: AppTextStyle.textD16R(context),
                        ),
                        Icon(
                          Icons.keyboard_arrow_up_sharp,
                          color: AppColor.darkColor,
                          size: 30,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'Unlock Offer',
                          style: AppTextStyle.textP10R(context).copyWith(
                              decoration: TextDecoration.underline,
                              decorationColor: AppColor.purpleColor,
                              fontSize: 16),
                        ),
                        const SizedBox(
                          width: 13,
                        ),
                        Icon(
                          Icons.lock_outline_sharp,
                          color: AppColor.darkColor,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const IrbedLockOfferWidget(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Alzarq',
                          style: AppTextStyle.textD16R(context),
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.keyboard_arrow_up_sharp,
                              color: AppColor.darkColor,
                              size: 30,
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'Unlock Offer',
                          style: AppTextStyle.textP10R(context).copyWith(
                              decoration: TextDecoration.underline,
                              decorationColor: AppColor.purpleColor,
                              fontSize: 16),
                        ),
                        const SizedBox(
                          width: 13,
                        ),
                        Icon(
                          Icons.lock_outline_sharp,
                          color: AppColor.darkColor,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AlzarqLockOfferWidget(),
                    
                 
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
