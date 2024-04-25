import 'package:flutter/material.dart';
import 'package:flutter_task_app/helpers/theme/app_colors.dart';
import 'package:flutter_task_app/helpers/theme/app_text_style.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 80,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            margin: const EdgeInsets.only(right: 14),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColor.purpleColor)),
            child: Center(
              child: Row(
                children: [
                  Icon(
                    Icons.star_outline_rounded,
                    color: AppColor.purpleColor,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '4.1',
                    style: AppTextStyle.textP12B(context),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '  5k+ ratings',
            style: AppTextStyle.textP10R(context),
          ),
        ],
      ),
    );
  }
}