
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task_app/helpers/app_images/app_images.dart';
import 'package:flutter_task_app/helpers/theme/app_colors.dart';

class HeaderImageAndBackIcon extends StatelessWidget {
  const HeaderImageAndBackIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          AppImages.burgerImage,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Positioned(
            top: 40,
            left: 20,
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: SvgPicture.asset(
                AppImages.circleBackIconIcon,
              ),
            )),
        Positioned(
          bottom: -48,
          left: 20,
          child: Container(
            width: 97,
            height: 97,
            decoration: BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColor.borderColor),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [AppColor.whiteColor, AppColor.greyColor],
                )),
            child: Center(
                child:Image.asset(AppImages.bJsImages)),
          ),
        ),
      ],
    );
  }
}


