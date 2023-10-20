// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dikara_core/dikara_core.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:report_book_core/report_book_core.dart' as _i4;

import '../presentation/routers/router.dart' as _i3;
import 'modules/internal_module.dart' as _i6;

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
    final internalModule = _$InternalModule();
    gh.lazySingleton<_i3.AppRouter>(() => internalModule.appRouter);
    gh.factory<_i3.AuthGuard>(() => _i3.AuthGuard(
          gh<_i4.UserRepository>(),
          gh<_i4.AuthenticationRepository>(),
        ));
    await _i5.DikaraCorePackageModule().init(gh);
    await _i4.ReportBookCorePackageModule().init(gh);
    return this;
  }
}

class _$InternalModule extends _i6.InternalModule {}
