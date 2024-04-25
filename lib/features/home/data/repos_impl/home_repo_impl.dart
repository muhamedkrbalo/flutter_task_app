import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_task_app/features/home/data/data_source/home_local_data_souece.dart';
import 'package:flutter_task_app/features/home/data/data_source/home_remote_data_source.dart';
import 'package:flutter_task_app/features/home/doamin/entities/categories_info_entity.dart';
import 'package:flutter_task_app/features/home/doamin/repos/home_repo.dart';
import 'package:flutter_task_app/helpers/error/failures.dart';

class HomeRepoImpl extends HomeRepo{
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl({required this.homeRemoteDataSource, required this.homeLocalDataSource});

  @override
  Future<Either<Failure, List<CategoriesInfoEntity>>> getAllCategories()async {
try {
  List<CategoriesInfoEntity> allCategories;
   allCategories= homeLocalDataSource.getAllCategories();
  if(allCategories.isNotEmpty ){
    return right(allCategories);
  }else{
   allCategories=  await homeRemoteDataSource.getAllCategories();
return right(allCategories);
  }
  
    
} catch (e) {
  if(e is DioException){
     return left(ServerFailure.fromDioError(e));
  }
  return left(ServerFailure(e.toString()));
  
}
 
  }

}