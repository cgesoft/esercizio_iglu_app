import 'package:equatable/equatable.dart';

/// Base class for all types of failures
abstract class Failure extends Equatable {
  /// failure message
  final String message;

  /// Default constructor
  const Failure(this.message);

  @override
  List<Object> get props => [message];
}

/// Server failure
class ServerFailure extends Failure {
  /// Default constructor
  const ServerFailure(String message) : super(message);
}

/// Local failure
class LocalFailure extends Failure {
  /// Default constructor
  const LocalFailure(String message) : super(message);
}

/// Invalid URL failure
class InvalidUrlFailure extends Failure {
  /// Default constructor
  const InvalidUrlFailure(String message) : super(message);
}

/// Deserialization failure
class DeserializationFailure extends Failure {
  /// Default constructor
  const DeserializationFailure(String message) : super(message);
}

/// Cast failure
class CastFailure extends Failure {
  /// Default constructor
  const CastFailure(String message) : super(message);
}

/// Null value failure
class NullValueFailure extends Failure {
  /// Default constructor
  const NullValueFailure(String message) : super(message);
}

/// Login authentication failure
class AuthenticationFailure extends Failure {
  /// Title for dialog
  final String title;

  /// Default constructor
  const AuthenticationFailure(this.title, String message) : super(message);
}

/// User cancelled login WebView failure
class UserCancelledLoginFlow extends Failure {
  /// Default constructor
  const UserCancelledLoginFlow(String message) : super(message);
}

/// BiometricAuthentication is not enabled
class BiometricAuthenticationNotEnabledFailure extends Failure {
  /// Default constructor
  const BiometricAuthenticationNotEnabledFailure(String message) : super(message);
}

/// BiometricAuthentication is not enabled
class BiometricAuthenticationFailure extends Failure {
  /// Default constructor
  const BiometricAuthenticationFailure() : super('$BiometricAuthenticationFailure');
}

/// BiometricAuthentication is not supported by device
class BiometricAuthenticationNotSupportedFailure extends Failure {
  /// Default constructor
  const BiometricAuthenticationNotSupportedFailure()
      : super('$BiometricAuthenticationNotSupportedFailure');
}

/// Failure while trying to show Medallia form survey
class MedalliaShowFormFailure extends Failure {
  /// Default constructor
  const MedalliaShowFormFailure(String message) : super(message);
}

/// Failure while trying to show Medallia form survey
class MedalliaSetCustomParameterFailure extends Failure {
  /// Default constructor
  const MedalliaSetCustomParameterFailure(String message) : super(message);
}

/// Failure while trying to check if beak-to-web with the specified URL can be handled by an app installed on the device
class UrlLauncherCanOpenFailure extends Failure {
  /// Default constructor
  const UrlLauncherCanOpenFailure(String message) : super(message);
}

/// Failure while trying to break-to-web navigate to the specified URL
class UrlLauncherLaunchFailure extends Failure {
  /// Default constructor
  const UrlLauncherLaunchFailure(String message) : super(message);
}

/// Apple Tracking Transparency Status failure
class TrackingTransparencyFailure extends Failure {
  /// Default constructor
  const TrackingTransparencyFailure(String message) : super(message);
}

/// User not found
class UserNotFound extends Failure {
  /// Default constructor
  const UserNotFound() : super('User not found');
}

///Denver documents get error
class DenverDocumentsFailure extends Failure {
  /// Default constructor
  const DenverDocumentsFailure(String message) : super(message);
}

/// Contacts fetch failure
class ContactsFetchFailure extends Failure {
  /// Default constructor
  const ContactsFetchFailure(String message) : super(message);
}

///Purchase voucher error
class PurchaseVoucherFailure extends Failure {
  /// Code that identify the type of error when user is trying to purchase a voucher
  final String? code;

  /// Default constructor
  const PurchaseVoucherFailure(
    String message, {
    this.code,
  }) : super(message);
}

/// Push notification error
class PushNotificationFailure extends Failure {
  /// Default constructor
  const PushNotificationFailure(String message) : super(message);
}

/// Special case when loyalty-stamps API returns 404 status
class LoyaltyStampsNotFound extends Failure {
  /// Default constructor
  const LoyaltyStampsNotFound() : super('User has no loyalty stamps.');
}

/// Special case when packs API returns 404 status
class PacksNotFound extends Failure {
  /// Default constructor
  const PacksNotFound() : super('User has no packs.');
}

/// Data gifting confirmation error
class DataGiftingConfirmationFailure extends Failure {
  /// error code returned by gifting API
  final String? code;

  /// Default constructor
  const DataGiftingConfirmationFailure({required String message, this.code}) : super(message);
}

/// Return type in case checking the APK signature fails
class ApkSignatureFailure extends Failure {
  /// Default constructor
  const ApkSignatureFailure(String message) : super(message);
}
