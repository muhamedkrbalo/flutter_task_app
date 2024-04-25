import 'package:flutter_task_app/features/home/doamin/entities/categories_info_entity.dart';
import 'package:flutter_task_app/helpers/networking/urls.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
 List<CategoriesInfoEntity> getAllCategories();
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  @override
  List<CategoriesInfoEntity> getAllCategories() {
 
   var box=Hive.box<CategoriesInfoEntity>(Urls.hiveBox);
  return box.values.toList();
  }
}