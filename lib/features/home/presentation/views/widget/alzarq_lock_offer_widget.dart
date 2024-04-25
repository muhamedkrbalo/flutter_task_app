import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task_app/helpers/app_images/app_images.dart';
import 'package:flutter_task_app/helpers/theme/app_colors.dart';
import 'package:flutter_task_app/helpers/theme/app_text_style.dart';

class AlzarqLockOfferWidget extends StatelessWidget {
  const AlzarqLockOfferWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: AppColor.darkGreyColor,
              ),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        SvgPicture.asset(AppImages.offerIconGrey),
                        const SizedBox(
                          height: 10,
                        ),
                         Text('DEAL',style: AppTextStyle.textG9c16M(context).copyWith(fontSize: 18),),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(children: [
                      const SizedBox(
                        height: 20,
                      ),
                      ...List.generate(
                        40,
                        (index) => Container(
                          color: index % 2 == 0
                              ? Colors.transparent
                              : AppColor.grey9cColor,
                          height: 3,
                          width: 1,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ]),
                    const SizedBox(
                      width: 13,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          '35% off Zamrad ',
                          style: AppTextStyle.textG9c16M(context),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.55,
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  'During operating hours',
                                  style: AppTextStyle.textG9c12R(
                                      context),
                                ),
                              ),
                            ],
                          ),
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
                                      AppColor.grey9cColor,
                                  child: Text(
                                    letter[index],
                                    style: AppTextStyle.textW16M(
                                            context)
                                        .copyWith(
                                            color: AppColor.whiteColor),
                                  ),
                                ),
                              );
                            }),
                          ],
                        ),
                        Text(
                        'Min. spend of AED200.',
                         style: AppTextStyle.textG9c12R(
                           context),
                                ),
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
                right: 15,
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    'Flash deals',
                    style: AppTextStyle.textW12R(context),
                  ),
                )),
                
            Positioned(
              bottom: 10,
              right: 15,
              child: Icon(
                Icons.favorite_border_rounded,
                color: AppColor.grey9cColor,
              ),
            )
          ],
        ),
                           const SizedBox(
          height: 12,
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: AppColor.darkGreyColor,
              ),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 27,
                    ),
                    Column(
                      children: [
                        Text(
                          'BUY 1',
                          style: AppTextStyle.textG9c16M(context)
                              .copyWith(fontSize: 18),
                        ),
                        Text(
                          'GET 1',
                          style: AppTextStyle.textG9c16M(context)
                              .copyWith(fontSize: 18),
                        ),
                        Text(
                          'FREE',
                          style: AppTextStyle.textG9c16M(context)
                              .copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    Column(children: [
                      const SizedBox(
                        height: 20,
                      ),
                      ...List.generate(
                        40,
                        (index) => Container(
                          color: index % 2 == 0
                              ? Colors.transparent
                              : AppColor.grey9cColor,
                          height: 3,
                          width: 1,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ]),
                    const SizedBox(
                      width: 13,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       
                       SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.56,
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  'Chicken, beef or shrimp dish',
                                  style: AppTextStyle.textG9c16M(
                                      context),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.56,
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  'INCLUDED IN MOBILE PRODUCT . NOT YET PURCHASED',
                                  style: AppTextStyle.textG9c12R(
                                      context),
                                ),
                              ),
                            ],
                          ),
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
              bottom: 10,
              right: 15,
              child: Icon(
                Icons.favorite_border_rounded,
                color: AppColor.grey9cColor,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
