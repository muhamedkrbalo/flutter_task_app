import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task_app/custom_widgets/page_container/page_container.dart';
import 'package:flutter_task_app/features/home/presentation/views/widget/all_letters_widget.dart';
import 'package:flutter_task_app/features/home/presentation/views/widget/all_offer_for_category_widget.dart';
import 'package:flutter_task_app/features/home/presentation/views/widget/sub_category_widget.dart';
import 'package:flutter_task_app/helpers/app_images/app_images.dart';
import 'package:flutter_task_app/helpers/theme/app_colors.dart';
import 'package:flutter_task_app/helpers/theme/app_text_style.dart';

class SubCategoryScreen extends StatelessWidget {
  static const String routeName = 'SubCategoryScreen';
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  PageContainer(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.whiteColor,
          titleSpacing: 0,
          leadingWidth:35 ,
          title:  Text('Food',style: AppTextStyle.textD18M(context),)),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter( 
                  child: Text('Sub Category',style: AppTextStyle.textD18M(context),),
                ),
                  const SliverToBoxAdapter(
                  child:SizedBox(height: 12),
                ),
                const SubCategoryWidget(),
              const SliverToBoxAdapter(child: SizedBox(height: 29,),),
               SliverToBoxAdapter(
                child: Row(
                  children: [
                     Flexible(child: Text('All Offers For Food, Drinks & Restaurants',style: AppTextStyle.textD18M(context),)),
                    Container(
                      width: 32,
                      height: 32,
                   
                      decoration: BoxDecoration(
                           color: AppColor.mainAppColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: SvgPicture.asset(AppImages.searchIcon,colorFilter: ColorFilter.mode(AppColor.purpleColor, BlendMode.srcIn),),
                      ),
                    ),
                    const SizedBox(width: 10,),
                     Text('sort',style: AppTextStyle.textD16R(context,color: AppColor.purpleColor ),),
                     Icon(Icons.keyboard_arrow_down_rounded,color: AppColor.purpleColor,size:30 ,)
                  ],
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 16,),),
           const AllLettersWidget(),

              const AllOfferForCategoryWidget(),
         
              ],
            ),
          ),
          ),
    );
  }
}

