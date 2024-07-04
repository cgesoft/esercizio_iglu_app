import 'package:logger/logger.dart';

import 'logger_abstract.dart';

/// Concrete implementation of [LoggerAbstract] using the Logger library
/// Should the logger library change or be replaced,
/// then only this class needs to change, while its usages would stay the same
class LoggerImpl extends LoggerAbstract {
  /// External library member
  late final Logger logger;

  /// Constructor with external library dependency
  LoggerImpl({required this.logger});

  @override
  void setMinimumLoggerLevel(LoggerLevel loggerLevel) {
    switch (loggerLevel) {
      case LoggerLevel.verbose:
        Logger.level = Level.trace;
        break;
      case LoggerLevel.debug:
        Logger.level = Level.debug;
        break;
      case LoggerLevel.info:
        Logger.level = Level.info;
        break;
      case LoggerLevel.warning:
        Logger.level = Level.warning;
        break;
      case LoggerLevel.error:
        Logger.level = Level.error;
        break;
      case LoggerLevel.fatal:
        Logger.level = Level.fatal;
        break;
      default:
        Logger.level = Level.trace;
        break;
    }
  }

  @override
  void verbose(Object message) {
    logger.t(message);
  }

  @override
  void debug(Object message) {
    logger.d(message);
  }

  @override
  void info(Object message) {
    logger.i(message);
  }

  @override
  void warning(Object message) {
    logger.w(message);
  }

  @override
  void error(Object message) {
    logger.e(message);
  }

  @override
  void fatal(Object message) {
    logger.f(message);
  }
}
