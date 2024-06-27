// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:firebase_core/firebase_core.dart' as _i8;
import 'package:flutter_learning/domain/interface/user_auth.dart' as _i9;
import 'package:flutter_learning/domain/model/user.dart' as _i4;
import 'package:flutter_learning/domain/objects/role.dart' as _i6;
import 'package:flutter_learning/domain/objects/unique_id.dart' as _i7;
import 'package:flutter_learning/infrastructure/implementation/user_auth.dart'
    as _i10;
import 'package:flutter_learning/presentation/core/injection.dart' as _i11;
import 'package:flutter_learning/presentation/core/router.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final thirdPartyInjection = _$ThirdPartyInjection();
    gh.lazySingleton<_i3.AuthGuard>(() => _i3.AuthGuard());
    gh.lazySingleton<_i3.AppRouter>(() => _i3.AppRouter());
    gh.lazySingleton<_i4.AppUser>(() => _i4.AppUser.instance());
    gh.lazySingleton<_i5.FirebaseAuth>(
      () => thirdPartyInjection.firebaseAuth,
      instanceName: 'database',
    );
    gh.factory<_i6.Role>(() => _i6.Role(gh<String>()));
    gh.factory<_i7.UniqueId>(() => _i7.UniqueId(gh<String>()));
    await gh.lazySingletonAsync<_i8.FirebaseApp>(
      () => thirdPartyInjection.firebaseAppDev,
      instanceName: 'database',
      registerFor: {_dev},
      preResolve: true,
    );
    await gh.lazySingletonAsync<_i8.FirebaseApp>(
      () => thirdPartyInjection.firebaseAppProd,
      instanceName: 'database',
      registerFor: {_prod},
      preResolve: true,
    );
    gh.lazySingleton<_i9.IUserAuth>(() =>
        _i10.UserAuthImpl(gh<_i5.FirebaseAuth>(instanceName: 'database')));
    return this;
  }
}

class _$ThirdPartyInjection extends _i11.ThirdPartyInjection {}
