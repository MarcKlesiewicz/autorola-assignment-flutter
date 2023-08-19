import 'package:auto_route/auto_route.dart';
import 'package:autorola_assignment/router/router.gr.dart';
import 'package:autorola_assignment/theme/theme_definition.dart';
import 'package:autorola_assignment/widgets/text/styled_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';

// Autorouter -> Remove this file
@RoutePage()
class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentPage = 0;

  final _routes = [
    const NestedRoute1(),
    const NestedRoute2(),
    const NestedRoute3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: AppBar(
        title: HeadlineSmall.onPrimary(translate('demo_page.title')),
        actions: [
          IconButton(
              onPressed: switchLocale,
              icon: const Icon(Icons.language),
              color: context.colors.onPrimary)
        ],
      ),
      body: const AutoRouter(),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentPage,
          items: [
            BottomNavigationBarItem(
                label: 'nested page 1',
                icon: Icon(
                  Icons.filter_1_outlined,
                  color: context.colors.onBackground,
                )),
            BottomNavigationBarItem(
                label: 'nested page 2',
                icon: Icon(
                  Icons.filter_2_outlined,
                  color: context.colors.onBackground,
                )),
            BottomNavigationBarItem(
                label: 'nested page 3',
                icon: Icon(
                  Icons.filter_2_outlined,
                  color: context.colors.onBackground,
                )),
          ],
          onTap: goToPage),
    );
  }

  void switchLocale() {
    final newLocale =
        LocalizedApp.of(context).delegate.currentLocale.languageCode == 'da'
            ? 'en'
            : 'da';
    changeLocale(context, newLocale);
  }

  void goToPage(int page) {
    AutoRouter.of(context).replace(_routes[page]);
    setState(() {
      _currentPage = page;
    });
  }
}
