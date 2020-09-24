import 'package:todo_list/models/category.dart';
import 'package:todo_list/repositories/repository.dart';

class CategoryService {
  Repository _repository;

  CategoryService() {
    _repository = Repository();
  }

  //Create Data
  saveCategory(Category category) async {
    return await _repository.insertData('categories', category.categoryMap());
  }

  //ReadData
  readCategories() async {
    return await _repository.readData('categories');
  }
}
