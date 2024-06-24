import 'package:auto_route/auto_route.dart';
import 'package:flutter_learning/presentation/core/injection.dart';
import 'package:flutter_learning/presentation/pages/home_page.dart';
import 'package:flutter_learning/presentation/pages/splash_page.dart';
import 'package:injectable/injectable.dart';

part 'router.gr.dart';

final AuthGuard authGuard = getIt<AuthGuard>();

@LazySingleton()
class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (1 == 1) {
      resolver.next(true);
    } else {
      resolver.redirect(const SplashRoute());
    }
  }
}

@LazySingleton()
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(page: SplashRoute.page, guards: [authGuard], initial: true),
      AutoRoute(page: HomeRoute.page, guards: [authGuard]),
    ];
  }
}
