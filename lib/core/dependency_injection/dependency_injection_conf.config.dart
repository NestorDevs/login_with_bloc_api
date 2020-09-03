// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../modules/user/presentation/controllers/check_login_password_controller.dart';
import '../database/database_connection.dart';
import '../database/i_database_connection.dart';
import '../../modules/user/data/datasource/i_user_datasource.dart';
import '../../modules/user/data/datasource/user-datasource.dart';
import '../../modules/user/data/repositories/user_repository.dart';
import '../../modules/user/domain/repositories/i_user_repository.dart';
import '../../modules/user/domain/usecases/login_with_user_password.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<IDatabaseConnection>(() => DatabaseConnection());
  gh.lazySingleton<IUserDataSource>(
      () => UserDatasource(get<IDatabaseConnection>()));
  gh.lazySingleton<IUserRepository>(
      () => UserRepository(get<IUserDataSource>()));
  gh.lazySingleton<LoginWithUserPassword>(
      () => LoginWithUserPassword(get<IUserRepository>()));
  gh.lazySingleton<CheckLoginPasswordController>(
      () => CheckLoginPasswordController(get<LoginWithUserPassword>()));
  return get;
}
