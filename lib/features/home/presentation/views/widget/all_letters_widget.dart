import 'package:flutter/material.dart';
import 'package:flutter_task_app/helpers/theme/app_colors.dart';
import 'package:flutter_task_app/helpers/theme/app_text_style.dart';

class AllLettersWidget extends StatefulWidget {
  const AllLettersWidget({
    super.key,
  });

  @override
  State<AllLettersWidget> createState() => _AllLettersWidgetState();
}

class _AllLettersWidgetState extends State<AllLettersWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 40,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 27,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5, vertical: 5),
                    decoration: BoxDecoration(
                      color: AppColor.mainAppColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 58,
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Center(
                      child: Text(
                        'All',
                        style: AppTextStyle.textD16R(context).copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColor.purpleColor),
                      ),
                    ),
                  ),
                ],
              );
            } else {
              String letter =
                  String.fromCharCode('A'.codeUnitAt(0) + index - 1);
              return Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5, vertical: 5),
                    decoration: BoxDecoration(
                      color: AppColor.greyColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 58,
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            letter,
                            style: AppTextStyle.textD16R(context)
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                        
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
