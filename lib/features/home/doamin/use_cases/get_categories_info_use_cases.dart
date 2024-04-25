import 'package:dartz/dartz.dart';
import 'package:flutter_task_app/features/home/doamin/entities/categories_info_entity.dart';
import 'package:flutter_task_app/features/home/doamin/repos/home_repo.dart';
import 'package:flutter_task_app/helpers/error/failures.dart';

class GetCategoriesInfoUseCase{
  final HomeRepo homeRepo;

  GetCategoriesInfoUseCase({required this.homeRepo});
   Future<Either<Failure,List<CategoriesInfoEntity>>>getCategories(){
    return homeRepo.getAllCategories();
   }
}