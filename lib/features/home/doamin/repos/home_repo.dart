import 'package:dartz/dartz.dart';
import 'package:flutter_task_app/features/home/doamin/entities/categories_info_entity.dart';
import 'package:flutter_task_app/helpers/error/failures.dart';

abstract class HomeRepo{
  Future<Either<Failure,List<CategoriesInfoEntity>>> getAllCategories();
}