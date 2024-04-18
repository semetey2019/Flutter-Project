import 'package:auto_route/auto_route.dart';
import 'package:nippon_habbits/constants/route/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: IntroRoute.page, initial: true),
        AutoRoute(page: SplashRoute.page),
        AutoRoute(page: Splash2Route.page),
        AutoRoute(page: MainRoute.page),
        // AutoRoute(page: JournalRoute.page),

        // AutoRoute(page: PracticesRoute.page),
        //  AutoRoute(page: SettingsRoute.page),
      ];
}
