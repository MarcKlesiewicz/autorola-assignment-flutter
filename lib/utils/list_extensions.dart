import 'package:flutter/material.dart';

extension ListGap on Iterable<Widget> {
  List<Widget> gap(SizedBox space) {
    return expand((Widget child) sync* {
      yield space;
      yield child;
    }).skip(1).toList();
  }
}
