import '../../../core/di/app_injection_module.dart';
import 'logger_abstract.dart';

/// Mixin used to inject [log] function inside any class.
///
/// Example:
/// ```dart
/// class MyClass with LoggerMixin {
///   void myFunction() {
///     log.debug('Debug log');
///   }
/// }
/// ```
mixin LoggerMixin {
  /// Can log message at different level:
  ///
  /// [log.debug], [log.error], [log.fatal], [log.info], [log.verbose], [log.warning]
  final log = injector<LoggerAbstract>();
}
