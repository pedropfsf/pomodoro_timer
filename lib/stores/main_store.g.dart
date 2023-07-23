// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MainStore on MainStoreBase, Store {
  late final _$modeAtom = Atom(name: 'MainStoreBase.mode', context: context);

  @override
  Ways get mode {
    _$modeAtom.reportRead();
    return super.mode;
  }

  @override
  set mode(Ways value) {
    _$modeAtom.reportWrite(value, super.mode, () {
      super.mode = value;
    });
  }

  late final _$colorAtom = Atom(name: 'MainStoreBase.color', context: context);

  @override
  Color? get color {
    _$colorAtom.reportRead();
    return super.color;
  }

  @override
  set color(Color? value) {
    _$colorAtom.reportWrite(value, super.color, () {
      super.color = value;
    });
  }

  late final _$timerAtom = Atom(name: 'MainStoreBase.timer', context: context);

  @override
  int get timer {
    _$timerAtom.reportRead();
    return super.timer;
  }

  @override
  set timer(int value) {
    _$timerAtom.reportWrite(value, super.timer, () {
      super.timer = value;
    });
  }

  late final _$MainStoreBaseActionController =
      ActionController(name: 'MainStoreBase', context: context);

  @override
  dynamic toFocus() {
    final _$actionInfo = _$MainStoreBaseActionController.startAction(
        name: 'MainStoreBase.toFocus');
    try {
      return super.toFocus();
    } finally {
      _$MainStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic toShortPause() {
    final _$actionInfo = _$MainStoreBaseActionController.startAction(
        name: 'MainStoreBase.toShortPause');
    try {
      return super.toShortPause();
    } finally {
      _$MainStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic toLongPause() {
    final _$actionInfo = _$MainStoreBaseActionController.startAction(
        name: 'MainStoreBase.toLongPause');
    try {
      return super.toLongPause();
    } finally {
      _$MainStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
mode: ${mode},
color: ${color},
timer: ${timer}
    ''';
  }
}
