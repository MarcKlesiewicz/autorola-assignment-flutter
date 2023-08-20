import 'package:autorola_assignment/utils/list_extensions.dart';
import 'package:autorola_assignment/utils/utils.dart';
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
              ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 184,
                    maxHeight: 40,
                  ),
                  child: Image.asset(
                      'assets/images/logo_responsive_autorola.png')),
              Gaps.lgH,
              TextButton(onPressed: () {}, child: const Text('Vehicles')),
              TextButton(onPressed: () {}, child: const Text('Auctions'))
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
            TextButton(onPressed: () {}, child: const Text('data')),
            TextButton(onPressed: () {}, child: const Text('data')),
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
