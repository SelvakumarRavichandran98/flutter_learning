import 'package:freezed_annotation/freezed_annotation.dart';

part 'db.freezed.dart';

@freezed
class DbFailure with _$DbFailure {
  const factory DbFailure.dataAlreadyExists() = _DataAlreadyExists;

  const factory DbFailure.dataNotExists() = _DataNotExists;

  const factory DbFailure.inSufficientPermission() = _InSufficientPermission;

  const factory DbFailure.unableToDelete() = _UnableToDelete;

  const factory DbFailure.unableToRead() = _UnableToRead;

  const factory DbFailure.unableToUpload() = _UnableToUpload;

  const factory DbFailure.unableToUpsert() = _UnableToUpsert;

  const factory DbFailure.unexpected() = _Unexpected;
}
