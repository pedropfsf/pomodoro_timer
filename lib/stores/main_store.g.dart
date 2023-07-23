// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MainStore on MainStoreBase, Store {
  late final _$modeAtom = Atom(name: 'MainStoreBase.mode', context: context);

  @override
  String get mode {
    _$modeAtom.reportRead();
    return super.mode;
  }

  @override
  set mode(String value) {
    _$modeAtom.reportWrite(value, super.mode, () {
      super.mode = value;
    });
  }

  late final _$MainStoreBaseActionController =
      ActionController(name: 'MainStoreBase', context: context);

  @override
  dynamic setMode(String value) {
    final _$actionInfo = _$MainStoreBaseActionController.startAction(
        name: 'MainStoreBase.setMode');
    try {
      return super.setMode(value);
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
mode: ${mode}
    ''';
  }
}
