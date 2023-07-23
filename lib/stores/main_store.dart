import 'package:mobx/mobx.dart';
import 'package:pomodoro_timer/utils/ways.dart';

part 'main_store.g.dart';

class MainStore = MainStoreBase with _$MainStore;

abstract class MainStoreBase with Store {
  @observable
  List ways = [FocusMode(), ShortPauseMode(), LongPauseMode()];

  @observable
  int index = 0;

  @observable
  Mode currentMode = getMode('focus');

  @observable
  int currentTimer = 0;

  @action
  setCurrentMode(Mode value) {
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
    setCurrentMode(ways.elementAt(index));
  }

  @action
  back() {
    if (index > 0) {
      index--;
    }
    setCurrentMode(ways.elementAt(index));
  }
}
