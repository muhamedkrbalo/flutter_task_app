import 'package:hive/hive.dart';
part 'categories_info_entity.g.dart';
@HiveType(typeId: 0)
class CategoriesInfoEntity {
  @HiveField(0)
  final String nameCategory;
  @HiveField(1)
  final String imageCategory;
  CategoriesInfoEntity({  required this.nameCategory,  required this.imageCategory});
}