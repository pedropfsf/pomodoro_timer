// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MainStore on MainStoreBase, Store {
  late final _$currentModeAtom =
      Atom(name: 'MainStoreBase.currentMode', context: context);

  @override
  String get currentMode {
    _$currentModeAtom.reportRead();
    return super.currentMode;
  }

  @override
  set currentMode(String value) {
    _$currentModeAtom.reportWrite(value, super.currentMode, () {
      super.currentMode = value;
    });
  }

  late final _$currentTimerAtom =
      Atom(name: 'MainStoreBase.currentTimer', context: context);

  @override
  int get currentTimer {
    _$currentTimerAtom.reportRead();
    return super.currentTimer;
  }

  @override
  set currentTimer(int value) {
    _$currentTimerAtom.reportWrite(value, super.currentTimer, () {
      super.currentTimer = value;
    });
  }

  late final _$MainStoreBaseActionController =
      ActionController(name: 'MainStoreBase', context: context);

  @override
  dynamic setCurrentMode(String value) {
    final _$actionInfo = _$MainStoreBaseActionController.startAction(
        name: 'MainStoreBase.setCurrentMode');
    try {
      return super.setCurrentMode(value);
    } finally {
      _$MainStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCurrentTimer(int value) {
    final _$actionInfo = _$MainStoreBaseActionController.startAction(
        name: 'MainStoreBase.setCurrentTimer');
    try {
      return super.setCurrentTimer(value);
    } finally {
      _$MainStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentMode: ${currentMode},
currentTimer: ${currentTimer}
    ''';
  }
}
