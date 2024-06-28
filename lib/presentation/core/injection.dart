import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_learning/presentation/common/constant.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies(String environment) async {
  getIt.init(environment: environment);
}

@module
abstract class ThirdPartyInjection {
  @lazySingleton
  @Named(database)
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @dev
  @preResolve
  @lazySingleton
  @Named(database)
  Future<FirebaseApp> get firebaseAppDev => Firebase.initializeApp(
        name: database,
        options: const FirebaseOptions(
          apiKey: 'AIzaSyCoeA8w1Ut5I1gmMuC9O9OzE6vKn4dupmE',
          appId: '1:577617433601:android:fc7a29e5b95317a2759c00',
          messagingSenderId: '577617433601',
          projectId: 'swatantra-dev-sec-fb8ee',
          storageBucket: 'swatantra-dev-sec-fb8ee.appspot.com',
        ),
      );

  @prod
  @preResolve
  @lazySingleton
  @Named(database)
  Future<FirebaseApp> get firebaseAppProd => Firebase.initializeApp(
        name: database,
        options: const FirebaseOptions(
          apiKey: 'AIzaSyBq8_P_pVfdPcn3cfTO9HxgOqHX2_h__Ts',
          appId: '1:165279150178:android:e85e961ba52c733edae13b',
          messagingSenderId: '165279150178',
          projectId: 'swatantra-prod-sec',
          storageBucket: 'swatantra-prod-sec.appspot.com',
        ),
      );
}
