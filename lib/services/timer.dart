String getZero(int value) {
  if (value < 10) {
    return '0$value';
  }

  return value.toString();
}

String getTimerBySeconds(int? value) {
  if (value == null) {
    return '00:00';
  }

  final minutes = (value / 60).floor();
  final seconds = value % 60;

  return '${getZero(minutes)}:${getZero(seconds)}';
}
