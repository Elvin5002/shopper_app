import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../data/contracts/favorite_contract.dart';
import '../../data/repositories/favorite_repository.dart';
import '../../data/services/remote/favorite_service.dart';
import 'index.dart';

final GetIt locator = GetIt.instance;

Future<void> init() async {
  await Hive.initFlutter();
}

Future<void> setupLocator() async {
  locator.registerLazySingleton(() => AuthService());
  locator.registerLazySingleton<AuthContract>(() => AuthRepository(locator()));
  final Box<String> box = await Hive.openBox('loginBox');
  locator
      .registerLazySingleton<LoginLocalService>(() => LoginLocalService(box));

  locator.registerLazySingleton(() => CategoryService());
  locator.registerLazySingleton<CategoryContract>(
      () => CategoryRepository(locator()));
  // locator.registerLazySingleton(() => Dio());

  locator.registerLazySingleton(() => ProductService());
  locator.registerLazySingleton<ProductContract>(
      () => ProductRepository(locator()));

  locator.registerLazySingleton(() => UpdateService());
  locator
      .registerLazySingleton<UpdateContract>(() => UpdateRepository(locator()));
  locator.registerLazySingleton<FavoriteService>(() => FavoriteService());
  locator
      .registerLazySingleton<FavoriteContract>(() => FavoriteRepo(locator()));
  locator.registerLazySingleton(() => ReviewService());
  locator
      .registerLazySingleton<ReviewContract>(() => ReviewRepository(locator()));

  locator.registerLazySingleton(() => ChangePasswordService());
  locator.registerLazySingleton<ChangePasswordContract>(
      () => ChangePasswordRepository(locator()));
      
}
