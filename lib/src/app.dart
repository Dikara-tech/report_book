import 'package:dikara_core/dikara_core.dart' hide AppRouter;
import 'package:flutter/material.dart';
import 'package:report_book/src/presentation/routers/router.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(428, 926),
      builder: (_, child) => MaterialApp.router(
        routerConfig: inject<AppRouter>().config(),
        title: 'Buku Penghubung',
        theme: GoTheme.lightTheme(),
        darkTheme: GoTheme.lightTheme(),
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: child!,
          );
        },
      ),
    );
  }
}