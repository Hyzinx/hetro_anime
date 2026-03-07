import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hetro_anime/data/exception_handeler/network_exception.dart';

part 'api_result.freezed.dart';

@freezed
abstract class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T data) = Success<T>;

  const factory ApiResult.failure(NetworkExceptions networkExceptions) = Failure<T>;
}