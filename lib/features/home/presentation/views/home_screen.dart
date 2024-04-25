import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task_app/custom_widgets/custom_form_filed/custom_form_field.dart';
import 'package:flutter_task_app/custom_widgets/page_container/page_container.dart';
import 'package:flutter_task_app/features/home/data/data_source/home_local_data_souece.dart';
import 'package:flutter_task_app/features/home/data/data_source/home_remote_data_source.dart';
import 'package:flutter_task_app/features/home/data/repos_impl/home_repo_impl.dart';
import 'package:flutter_task_app/features/home/doamin/use_cases/get_categories_info_use_cases.dart';
import 'package:flutter_task_app/features/home/presentation/controller/categories_provider.dart';
import 'package:flutter_task_app/features/home/presentation/views/sub_category_screen.dart';
import 'package:flutter_task_app/features/home/presentation/views/widget/categories_container_widget.dart';
import 'package:flutter_task_app/helpers/app_images/app_images.dart';
import 'package:flutter_task_app/helpers/theme/app_text_style.dart';
import 'package:flutter_task_app/helpers/utils/navigator_methods.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatelessWidget {
  static const String routeName = "HomeScreen";
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return PageContainer(
      child: Scaffold(
        body:ChangeNotifierProvider(
          create: (context) =>AllCategoriesProvider(getCategoriesInfoUseCase: GetCategoriesInfoUseCase(homeRepo: HomeRepoImpl(homeLocalDataSource: HomeLocalDataSourceImpl(),homeRemoteDataSource: HomeRemoteDataSourceImpl())))
          ..getAllCategories(),
   
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: CustomScrollView(
              slivers: [
            
                SliverToBoxAdapter(
                  child:   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
                 Text("Categories",style: AppTextStyle.textD18M(context),),
                const SizedBox(height: 16,),
                CustomFormField(
                  prefixIcon:Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SvgPicture.asset(AppImages.searchIcon),
                  ),
                  hintText: 'Search categories',
                ),
                const SizedBox(height: 22,),
                 Text("Popular Categories",style: AppTextStyle.textD18M(context),),
                 const SizedBox(height: 34,),
              ],
            ),
                ),
                
                Consumer<AllCategoriesProvider>(
                    builder: (BuildContext context, allCategoriesProvider,  _) { 
 if (allCategoriesProvider.state == ProviderState.loading) {
          return const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }else if (allCategoriesProvider.state == ProviderState.success) {
return SliverToBoxAdapter(
                  child: SizedBox(
                    height: 139,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: allCategoriesProvider.categories.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                           onTap: () {
                    NavigatorMethods.pushNamed(context, SubCategoryScreen.routeName);
                            },
                          child:  CategoriesContainerWidget(
                            categories: allCategoriesProvider.categories[index],
                          ));
                      },
                    ),
                  ),
                                );
              
        }else if (allCategoriesProvider.state == ProviderState.failure) {
          return SliverToBoxAdapter(child: Text(allCategoriesProvider.errorMessage ?? 'An error occurred'));
        } else {
          return const SliverToBoxAdapter(child: SizedBox()); // Handle other states if needed
        }
               },
             
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 29,),),
              SliverToBoxAdapter(
                child:  Text("All Categories",style: AppTextStyle.textD18M(context))
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 15,),),
               Consumer<AllCategoriesProvider>(
                    builder: (BuildContext context, allCategoriesProvider,  _) { 
 if (allCategoriesProvider.state == ProviderState.loading) {
          return const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }else if ( allCategoriesProvider.state == ProviderState.success) {
 return SliverGrid(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, 
                        crossAxisSpacing: 1, 
                        mainAxisSpacing: 20,
                        childAspectRatio: 0.7 
                     
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return  InkWell(
                            onTap: () {
                    NavigatorMethods.pushNamed(context, SubCategoryScreen.routeName);
                            },
                            child:   CategoriesContainerWidget(
                            categories: allCategoriesProvider.categories[index],
                          ));
                        },
                        childCount: allCategoriesProvider.categories.length, 
                      ),
                    );
           
        }else if (allCategoriesProvider.state == ProviderState.failure) {
          return SliverToBoxAdapter(child: Text(allCategoriesProvider.errorMessage ?? 'An error occurred'));
        } else {
          return const SliverToBoxAdapter(child: SizedBox()); // Handle other states if needed
        }
       }     ),
              ],
            ),
          ),
        )
        
    
      ),
    );
  }
}

