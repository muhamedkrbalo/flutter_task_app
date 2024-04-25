
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task_app/helpers/app_images/app_images.dart';
import 'package:flutter_task_app/helpers/theme/app_colors.dart';
import 'package:flutter_task_app/helpers/theme/app_text_style.dart';

class UnlockOfferWidget extends StatelessWidget {
  const UnlockOfferWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: MediaQuery.of(context).size.width.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: AppColor.darkColor,
              gradient: LinearGradient(
                  colors: [
                    AppColor.gridOneColor,
                    AppColor.gridTwoColor
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 SizedBox(
                  width: 30.w,
                ),
                SvgPicture.asset(AppImages.offerIconWhite),
                 SizedBox(
                  width: 20.w,
                ),
                Column(children: [
                   SizedBox(
                    height: 20.h,
                  ),
                  ...List.generate(
                    50,
                    (index) => Container(
                      color: index % 2 == 0
                          ? Colors.transparent
                          : AppColor.whiteColor,
                      height: 3,
                      width: 1,
                    ),
                  ),
                   SizedBox(
                    height: 20.h,
                  ),
                ]),
                 SizedBox(
                  width: 13.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      '25% off total bill',
                      style: AppTextStyle.textW16M(context),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Available from 05:00 PM - 02:00 AM',
                      style: AppTextStyle.textW12R(context),
                    ),
                    Row(
                      children: [
                        ...List.generate(5, (index) {
                          final List<String> letter = [
                            'S',
                            'M',
                            'T',
                            'W',
                            'T',
                            
                          ];
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 4, vertical: 10),
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor:
                                  AppColor.whiteColor,
                              child: Text(
                                letter[index],
                                style: AppTextStyle.textW16M(
                                        context)
                                    .copyWith(
                                        color: AppColor
                                            .purpleColor),
                              ),
                            ),
                          );
                        }),
                      ],
                    ),
                    Text(
                      'Min. spend of AED200.',
                      style: AppTextStyle.textW12R(context),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'VALID TO 31 DEC 2022',
                      style: AppTextStyle.textW12R(context),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'View offer terms',
                      style: AppTextStyle.textW12R(context)
                          .copyWith(
                              fontSize: 14,
                              decoration:
                                  TextDecoration.underline,
                              decorationColor:
                                  AppColor.whiteColor),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          bottom: 0,
          left: -10,
          child: CircleAvatar(
            radius: 15,
            backgroundColor: AppColor.whiteColor,
          ),
        ),
        Positioned(
          top: 0,
          bottom: 0,
          right: -10,
          child: CircleAvatar(
            radius: 15,
            backgroundColor: AppColor.whiteColor,
          ),
        ),
        Positioned(
            top: 10,
            right: 10,
            child: Container(
              
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(15)),
              child: Text(
                'Flash deals',
                style: AppTextStyle.textW12R(context),
              ),
            ))
      ],
    );
  }
}
