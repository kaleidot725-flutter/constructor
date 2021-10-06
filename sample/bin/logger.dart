
class Logger {
  static Logger? _logger;

  factory Logger() {
    _logger ??= Logger._internal();
    return _logger!;
  }

  Logger._internal();

  void log(String message) {
    print(message);
  }
}

