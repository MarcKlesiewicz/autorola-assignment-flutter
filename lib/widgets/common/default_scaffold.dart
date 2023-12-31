import 'package:auto_route/auto_route.dart';
import 'package:autorola_assignment/api/home/home_service.dart';
import 'package:autorola_assignment/router/router.gr.dart';
import 'package:autorola_assignment/utils/list_extensions.dart';
import 'package:autorola_assignment/utils/utils.dart';
import 'package:autorola_assignment/widgets/dialogs/show_default_dialog.dart';
import 'package:autorola_assignment/widgets/text/styled_text.dart';
import 'package:autorola_assignment/widgets/text/text_settings.dart';
import 'package:flutter/material.dart';

class DefaultScaffold extends StatelessWidget {
  final Widget body;
  const DefaultScaffold({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f4f4),
      body: Column(
        children: [
          const Center(child: _Appbar()),
          Expanded(
            child: ListView(
              children: [
                ConstrainedBox(
                    constraints: BoxConstraints(
                        minHeight: MediaQuery.of(context).size.height),
                    child: body),
                Gaps.lgV,
                const _Footer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Appbar extends StatelessWidget {
  const _Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 50),
      width: MediaQuery.of(context).size.width,
      padding: Insets.a02,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 1),
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
          )
        ],
      ),
      child: Center(
        child: Container(
          constraints: const BoxConstraints(minHeight: 50, maxWidth: 992),
          child: Row(
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () => context.router.push(const HomeRoute()),
                  child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 184,
                        maxHeight: 40,
                      ),
                      child: Image.asset(
                          'assets/images/logo_responsive_autorola.png')),
                ),
              ),
              Gaps.lgH,
              TextButton(
                  onPressed: () => showNotImplementedSnackBar(context),
                  child: const Text('Vehicles')),
              TextButton(
                  onPressed: () =>
                      context.router.navigate(const AuctionsRoute()),
                  child: const Text('Auctions'))
            ],
          ),
        ),
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 120,
              maxHeight: 40,
            ),
            child: Image.asset('assets/images/logo_responsive_autorola.png')),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.copyright),
            const LabelLarge.secondary('Copyright 2020 Autorola Group'),
            const VerticalDivider(
              color: Colors.black,
            ),
            TextButton(
                onPressed: () => showNotImplementedSnackBar(context),
                child: const Text('Datenschutz ')),
            TextButton(
                onPressed: () => showNotImplementedSnackBar(context),
                child: const Text('Impressum')),
          ],
        ),
        Container(
          constraints: const BoxConstraints(maxWidth: 992),
          child: LabelLarge(
            'Autorola.eu Online Car auction sells cars for private inviduals, companies and car dealers. A quick and safe way to sell your car. Put the car on auction today and receive bids from approved dealers. Receive bids from over 70,000 approved dealers. You set the reserve price. No sale, no charge.',
            settings: TextSettings(
              color: Colors.black.withOpacity(0.5),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Gaps.lgV,
      ].gap(Gaps.mdV),
    );
  }
}
