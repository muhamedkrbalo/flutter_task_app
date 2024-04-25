import 'package:flutter/material.dart';
import 'package:flutter_task_app/features/home/doamin/entities/categories_info_entity.dart';
import 'package:flutter_task_app/features/home/doamin/use_cases/get_categories_info_use_cases.dart';

enum ProviderState { loading, success, failure }

class AllCategoriesProvider extends ChangeNotifier {
  AllCategoriesProvider({required this.getCategoriesInfoUseCase});

  final GetCategoriesInfoUseCase getCategoriesInfoUseCase;
  ProviderState _state = ProviderState.loading;
  ProviderState get state => _state;

  String? errorMessage;
  List<CategoriesInfoEntity> _categories = [];
  List<CategoriesInfoEntity> get categories => _categories;

  Future<void> getAllCategories() async {
    try {
      _state = ProviderState.loading;
      _categories = [];
      notifyListeners();
      final result = await getCategoriesInfoUseCase.getCategories();
      result.fold((failure) {
        _state = ProviderState.failure;
        errorMessage = failure.errMessage;
      }, (r) {
        _categories = r; 
        _state = ProviderState.success;
      });
    } catch (e) {
      _state = ProviderState.failure;
      errorMessage = 'An error occurred';
    } finally {
      notifyListeners();
    }
  }
}
