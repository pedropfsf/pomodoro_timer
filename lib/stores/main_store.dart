import 'package:mobx/mobx.dart';

part 'main_store.g.dart';

class MainStore = MainStoreBase with _$MainStore;

abstract class MainStoreBase with Store {
  @observable
  String currentMode = 'focus';

  @observable
  int currentTimer = 0;

  @action
  setCurrentMode(String value) {
    currentMode = value;
  }

  @action
  setCurrentTimer(int value) {
    currentTimer = value;
  }
}
