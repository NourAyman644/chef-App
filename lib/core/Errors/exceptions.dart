import 'error_model.dart';

class ServerException implements Exception {
  final ErrorModel errorModel;

  ServerException(this.errorModel);
}

class BadCertificateException extends ServerException {
  BadCertificateException(super.errorModel);
}

class BadResposneException extends ServerException {
  BadResposneException(super.errorModel);
}

class ConnectionTimeoutExpection extends ServerException {
  ConnectionTimeoutExpection(super.errorModel);
}

class ReceiveTimeoutException extends ServerException {
  ReceiveTimeoutException(super.errorModel);
}

class ConnectionErrorException extends ServerException {
  ConnectionErrorException(super.errorModel);
}

class BadRequestException extends ServerException {
  BadRequestException(super.errorModel);
}

class UnauthorizedExpection extends ServerException {
  UnauthorizedExpection(super.errorModel);
}

class ForbiddenException extends ServerException {
  ForbiddenException(super.errorModel);
}

class NotFoundException extends ServerException {
  NotFoundException(super.errorModel);
}

class ConflictException extends ServerException {
  ConflictException(super.errorModel);
}

class CancelException extends ServerException {
  CancelException(super.errorModel);
}
