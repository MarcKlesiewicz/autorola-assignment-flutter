# template

A flutter template project

Includes:

- Swagger code gen
- Autorouter for routing with flutter splash screen
- Setup of localization using flutter_translate, i18n and i18n-ally
- Setup AutoRouter nested pages for AppBar
- Setup for firebase/crashlytics
- flutter lints
- theme colors & color extensions
- constants for padding, borderRadius & sizedbox(for easy layouting)
- 12 custom text widgets following material 3 naming(check styled_text.dart)

### TODOs

- TODO Comments (See vs-code 'problems' tab) have been added when actions are required both if the feature is needed or to help with removal of the feature. Comment format is "[Feature] -> [Comment]"

## Checklist

### Pubspec

- Check pubspec and remove packages that are not needed for the particular project

### Package stuff

- project is called 'template', so rename alle imports with 'package:template' -> 'package:<your package name>'.
  - pubspec.yaml -> name
  - build.gradle -> applicationId
  - AndroidManifest files -> package
  - Info.plist -> CFBundleName
  - manifest.json web ? (Unsure about this one)
  - Several of the flutter imports
  - MainActivity.kt -> Ensure package name is correct (And ensure prober java folder structure, ie: 'dk/littlegiants/...)

## Features

### Swagger codegen

- Change url in ./generate.sh to your api end point
- run ./generate.sh

### GlobalBottomNavigationBar

- A global bottom navigation bar that is not part of the route view.
- Customize the navigation in:
  - ./lib/widgets/main/navigation/default_bottom_navigation_bar.dart
- Customize the navigation show animation in:
  - ./lib/widgets/main/navigation/global_navigation_bar.dart

### Firebase Crashlytics

- Go to firebase console and add a new project
- Run "flutterfire configure" see https://firebase.google.com/docs/flutter/setup
- Select your newly created firebase project
