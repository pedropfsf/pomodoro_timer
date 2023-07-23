import 'package:mobx/mobx.dart';

part 'main_store.g.dart';

class MainStore = MainStoreBase with _$MainStore;

abstract class MainStoreBase with Store {
  @observable
  List<String> ways = ['focus', 'short-pause', 'long-pause'];

  @observable
  int index = 0;

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

  @action
  next() {
    if (index < 2) {
      index++;
    }
    currentMode = ways.elementAt(index);
  }

  @action
  back() {
    if (index > 0) {
      index--;
    }
    currentMode = ways.elementAt(index);
  }
}
