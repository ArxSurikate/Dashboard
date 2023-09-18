import 'package:go_router/go_router.dart';
import 'package:rpg_app/responsivelayout.dart';
/* HomePage */
import 'package:rpg_app/screen/homepage/homepage.dart';

class CustomRouter {
  static const String HomePageView = "/";
  static const String DetailPageView = "/detail";
  static const String ProductPageView = "/product";

  static final router = GoRouter(routes: <GoRoute>[
    GoRoute(
      path: HomePageView,
      builder: (context, state) {
        return const HomePage();
      },
    )
  ]);
}
