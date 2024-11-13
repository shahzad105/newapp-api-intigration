import 'package:newsapp/model/category_model.dart';

List<CategoryModel> getCategory() {
  List<CategoryModel> category = [];

  CategoryModel categoryModel = CategoryModel();
  categoryModel.categoryName = 'Business';
  categoryModel.image = 'images/business.jpg';
  category.add(categoryModel);

  // Entertainment Category
  categoryModel = CategoryModel();
  categoryModel.categoryName = 'Entertainment';
  categoryModel.image = 'images/entertainment.jpg';
  category.add(categoryModel);

  // General Category
  categoryModel = CategoryModel();
  categoryModel.categoryName = 'General';
  categoryModel.image = 'images/general.jpg';
  category.add(categoryModel);

  // Science Category
  categoryModel = CategoryModel();
  categoryModel.categoryName = 'Science';
  categoryModel.image = 'images/science.jpg';
  category.add(categoryModel);

  // Health Category
  categoryModel = CategoryModel();
  categoryModel.categoryName = 'Health';
  categoryModel.image = 'images/health.jpg';
  category.add(categoryModel);

  return category;
}
