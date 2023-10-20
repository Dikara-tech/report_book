import 'package:dikara_core/dikara_core.dart';
import 'package:injectable/injectable.dart';
import 'package:report_book/src/di/injection_container.config.dart';
import 'package:report_book_core/report_book_core.dart';

/// Annotate and register dependencies under android environment.
const android = Environment('android');

/// Annotate and register dependencies under ios environment.
const ios = Environment('ios');

/// Annotate and register dependencies under staging environment.
const staging = Environment('staging');

/// Annotate and register dependencies under production environment.
const production = Environment('production');

/// Manually inject the dependencies with GetIt.
///
/// Useful if you want to do field injection.
final inject = GetIt.instance;

/// Initialize and configure the dependencies of this app.
@InjectableInit(
  includeMicroPackages: true,
  preferRelativeImports: true,
  externalPackageModulesAfter: [
    ExternalModule(DikaraCorePackageModule),
    ExternalModule(ReportBookCorePackageModule),
  ],
)
Future<void> configureDependencies({
  required EnvironmentFilter environmentFilter,
}) =>
    inject.init(environmentFilter: environmentFilter);
