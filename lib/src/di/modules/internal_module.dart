import 'package:injectable/injectable.dart';
import 'package:report_book/src/presentation/routers/router.dart';

@module
abstract class InternalModule {
  @lazySingleton
  AppRouter get appRouter => AppRouter();
}
