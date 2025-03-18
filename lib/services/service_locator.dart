import 'package:get_it/get_it.dart';
import 'package:kite/services/category_service.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<CategoryService>(CategoryService());
}
