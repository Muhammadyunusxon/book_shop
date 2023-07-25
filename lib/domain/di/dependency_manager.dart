import 'package:book_shop/domain/handlers/http_service.dart';
import 'package:book_shop/domain/interface/auth_repository.dart';
import 'package:book_shop/infrastructure/repositories/auth_repository_impl.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future setUpDependencies() async {
  getIt.registerLazySingleton<HttpService>(() => HttpService());
  getIt.registerSingleton<AuthRepository>(AuthRepositoryImpl());
}

final authRepository = getIt.get<AuthRepository>();
