import 'package:auto_route/auto_route.dart';
import 'package:template/router/guards.dart';
import 'package:template/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  AppRouter({required AuthGuard authGuard}) : super() {
    routes.addAll([
      AutoRoute(page: FlutterSplashRoute.page, initial: true),
      AutoRoute(page: RootRoute.page, children: [
        AutoRoute(page: NestedRoute1.page),
        AutoRoute(page: NestedRoute2.page),
        AutoRoute(page: NestedRoute3.page),
      ]),
    ]);
  }

  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  final List<AutoRoute> routes = [];
}


//TODO: custom transition 
// Route<T> slideInFromRightAndOutLeft<T>(
//   BuildContext context,
//   Widget child,
//   Page<T> page,
// ) {
//   return PageRouteBuilder(
//     settings: page,
//     pageBuilder: (context, animation, animation2) {
//       final inAnimation = CurvedAnimation(
//         parent: animation,
//         curve: Curves.fastOutSlowIn,
//       );
//       final outAnimation = CurvedAnimation(
//         parent: animation2,
//         curve: Curves.fastOutSlowIn,
//       );
//       return OverflowBox(
//         child: SlideTransition(
//           position:
//               Tween(begin: const Offset(1.0, 0.0), end: Offset.zero).animate(
//             inAnimation,
//           ),
//           child: FadeTransition(
//             opacity: Tween(begin: .0, end: 1.0).animate(
//               inAnimation,
//             ),
//             child: SlideTransition(
//               position: Tween(begin: Offset.zero, end: const Offset(-1.0, .0))
//                   .animate(outAnimation),
//               child: FadeTransition(
//                   opacity: Tween(begin: 1.0, end: 0.0).animate(
//                     outAnimation,
//                   ),
//                   child: child),
//             ),
//           ),
//         ),
//       );
//     },
//   );
// }
