// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:report_book_core/report_book_core.dart' as _i3;

import '../presentation/routers/router.dart' as _i4;
import 'modules/internal_module.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    await _i3.ReportBookCorePackageModule().init(gh);
    final internalModule = _$InternalModule();
    gh.lazySingleton<_i4.AppRouter>(() => internalModule.appRouter);
    gh.lazySingleton<_i4.AuthGuard>(
        () => _i4.AuthGuard(gh<_i3.AuthenticationRepository>()));
    return this;
  }
}

class _$InternalModule extends _i5.InternalModule {}
