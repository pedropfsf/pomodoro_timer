import 'package:mobx/mobx.dart';

part 'main_store.g.dart';

class MainStore = MainStoreBase with _$MainStore;

abstract class MainStoreBase with Store {
  @observable
  String mode = 'focus';
  int currentTimer = 0;

  @action
  setMode(String value) {
    mode = value;
  }

  @action
  setCurrentTimer(int value) {
    currentTimer = value;
  }
}
