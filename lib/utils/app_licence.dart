import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppLicence extends StatelessWidget {
  final Widget title;

  const AppLicence({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Column(
        children: [
          DefaultTextStyle(
            style: Theme.of(context).textTheme.labelMedium ?? const TextStyle(),
            child: title,
          ),
          const AppVersionText(),
        ],
      ),
      onPressed: () {
        showLicensePage(context: context, useRootNavigator: true);
      },
    );
  }
}

class AppVersionText extends StatefulWidget {
  final TextStyle? textStyle;

  const AppVersionText({
    this.textStyle,
    Key? key,
  }) : super(key: key);

  @override
  State<AppVersionText> createState() => _VersionTextState();
}

class _VersionTextState extends State<AppVersionText> {
  var versionText = '';

  @override
  void initState() {
    PackageInfo.fromPlatform().then((packageInfo) {
      String version = packageInfo.version;
      String buildNumber = packageInfo.buildNumber;

      setState(() {
        versionText = "v $version ($buildNumber)";
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      versionText,
      style: widget.textStyle ?? Theme.of(context).textTheme.labelMedium,
    );
  }
}
