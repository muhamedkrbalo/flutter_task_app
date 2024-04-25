
import 'package:flutter/material.dart';
import 'package:flutter_task_app/helpers/theme/app_colors.dart';
import 'package:flutter_task_app/helpers/theme/app_text_style.dart';

class UnlockOfferTextAndIconWidget extends StatelessWidget {
  const UnlockOfferTextAndIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

