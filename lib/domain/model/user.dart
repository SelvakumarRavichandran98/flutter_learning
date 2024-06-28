import 'package:dartz/dartz.dart';
import 'package:flutter_learning/domain/core/failure.dart';
import 'package:flutter_learning/domain/objects/role.dart';
import 'package:flutter_learning/domain/objects/unique_id.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AppUser {
  factory AppUser({
    UniqueId uid = UniqueId.unauthenticated,
    bool read = false,
    bool write = false,
    bool delete = false,
    bool update = false,
    Role role = Role.initial,
  }) {
    _uid = uid;
    _read = read;
    _write = write;
    _delete = delete;
    _update = update;
    _role = role;
    return const AppUser._();
  }

  const AppUser._();

  @factoryMethod
  factory AppUser.instance() => const AppUser._();

  static bool _delete = false;
  static bool _read = false;
  static Role _role = Role.initial;
  static UniqueId _uid = UniqueId.unauthenticated;
  static bool _update = false;
  static bool _write = false;

  @override
  String toString() {
    return 'AppUser(uid: $uid, read: $read, write: $write, update: $update, delete: $delete, role: $role)';
  }

  bool get delete => _delete;

  bool get read => _read;

  bool get write => _write;

  bool get update => _update;

  UniqueId get uid => _uid;

  Role get role => _role;

  bool isAuthenticated() {
    return isFailure().fold(() => true, (_) => false);
  }

  Option<Failure<Object>> isFailure() {
    return _uid.isFailure().orElse(_role.isFailure);
  }
}
