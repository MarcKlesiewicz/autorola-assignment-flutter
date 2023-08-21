import 'package:auto_route/auto_route.dart';
import 'package:autorola_assignment/router/guards.dart';
import 'package:autorola_assignment/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  AppRouter({required AuthGuard authGuard}) : super() {
    routes.addAll([
      AutoRoute(page: HomeRoute.page, initial: true, path: '/home'),
      AutoRoute(page: AuctionsRoute.page, path: '/auction'),
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
