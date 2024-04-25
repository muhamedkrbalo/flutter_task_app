
import 'package:flutter_task_app/features/home/data/models/all_categories_model.dart';
import 'package:flutter_task_app/features/home/doamin/entities/categories_info_entity.dart';
import 'package:flutter_task_app/helpers/networking/api_helper.dart';
import 'package:flutter_task_app/helpers/networking/urls.dart';
import 'package:hive/hive.dart';

abstract class HomeRemoteDataSource {
  Future<List<CategoriesInfoEntity>> getAllCategories();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
      @override
   Future<List<CategoriesInfoEntity>> getAllCategories()async {
 var data = await ApiHelper.instance.get(Urls.categories);
 List<CategoriesInfoEntity> allCategoriesInfo = allCategories(data);
 return allCategoriesInfo;
  }

      List<CategoriesInfoEntity> allCategories(data) {
        List<CategoriesInfoEntity> categories=[];
        for(var allCategoriesMap in data){
         categories.add(AllCategoriesModel.fromJson(allCategoriesMap));
        saveData(categories);
        }
        return categories;
      }

      void saveData(List<CategoriesInfoEntity> categoriesInfo) {
          var box=Hive.box<CategoriesInfoEntity>(Urls.hiveBox);
          box.clear();
        box.addAll(categoriesInfo);
      }
  }
  

  
  
  
