import 'package:dikara_core/dikara_core.dart' hide AppRouter;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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

@RoutePage()
class MainScopePage extends StatelessWidget {
  const MainScopePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      homeIndex: 0,
      animationCurve: Curves.fastOutSlowIn,
      extendBody: true,
      resizeToAvoidBottomInset: false,
      routes: const [
        AnnouncementRouter(),
        MessageListRouter(),
        AssignmentListRouter(),
        RecitationListRouter(),
        ProfileRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomAppBar(
          color: Colors.transparent,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 4).r,
            color: GoColor.albin,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _TabsContainer(
                  isActive: tabsRouter.activeIndex == 0,
                  asset: Assets.icon.systems.icHomeOutline,
                  assetActive: Assets.icon.systems.icHomeFill,
                  title: 'Home',
                  onTap: () {
                    tabsRouter.setActiveIndex(0);
                  },
                ),
                _TabsContainer(
                  isActive: tabsRouter.activeIndex == 1,
                  asset: Assets.icon.systems.icMedicineOutline,
                  assetActive: Assets.icon.systems.icMedicineFill,
                  title: 'Resep',
                  onTap: () {
                    tabsRouter.setActiveIndex(1);
                  },
                ),
                _TabsContainer(
                  isActive: tabsRouter.activeIndex == 2,
                  asset: Assets.icon.systems.icMenuGridOutline,
                  assetActive: Assets.icon.systems.icMenuGridFill,
                  title: 'Kategori',
                  onTap: () {
                    tabsRouter.setActiveIndex(2);
                  },
                ),
                _TabsContainer(
                  isActive: tabsRouter.activeIndex == 3,
                  asset: Assets.icon.systems.icMoneyOutline,
                  assetActive: Assets.icon.systems.icMoneyFill,
                  title: 'Transaksi',
                  onTap: () {
                    tabsRouter.setActiveIndex(3);
                  },
                ),
                _TabsContainer(
                  isActive: tabsRouter.activeIndex == 4,
                  asset: Assets.icon.systems.icUserOutline,
                  assetActive: Assets.icon.systems.icUserFill,
                  title: 'Profil',
                  onTap: () {
                    AutoRouter.of(context).push(const LoginRouter());
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _TabsContainer extends StatelessWidget {
  const _TabsContainer({
    Key? key,
    required this.isActive,
    required this.asset,
    required this.assetActive,
    required this.title,
    this.onTap,
  }) : super(key: key);

  final bool isActive;
  final String asset;
  final String assetActive;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 1.sw * 0.19,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              isActive ? assetActive : asset,
              width: 24.sp,
              height: 24.sp,
              colorFilter: ColorFilter.mode(
                isActive ? GoColor.hydro : GoColor.anaesthesia,
                BlendMode.srcIn,
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              title,
              style: GoTypography.small(
                color: isActive ? GoColor.hydro : GoColor.anaesthesia,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
