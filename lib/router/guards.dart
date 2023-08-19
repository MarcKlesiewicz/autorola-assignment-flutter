import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//TODO: authguard example
class AuthGuard extends AutoRouteGuard {
  final Ref ref;

  AuthGuard(this.ref);
  @override
  Future<void> onNavigation(
      NavigationResolver resolver, StackRouter router) async {
    // final authState = (await ref.read(authStateProvider.future));

    // if (authState is Authorized) {
    //   resolver.next(true);
    // } else {
    //   router.navigate(const LoginRoute());
    // }
  }
}
