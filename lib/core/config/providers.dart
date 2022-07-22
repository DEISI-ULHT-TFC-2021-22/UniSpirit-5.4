

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:projectunispiritfinalt/core/config/network_info.dart';
import 'package:projectunispiritfinalt/features/meets/data/data_source/remote_data_source.dart';
import 'package:projectunispiritfinalt/features/meets/data/repository/meets_repository_impl.dart';
import 'package:projectunispiritfinalt/features/meets/presentation/providers/meets_provider.dart';

import 'package:projectunispiritfinalt/services/auth_service.dart';
import 'package:projectunispiritfinalt/services/zoom/zoom_service.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

final List<SingleChildWidget> unispiritProviders = [
  ListenableProvider<AuthService>(create: (_) => AuthService()),
  Provider<ZoomService>(
    create: (_) {
      return const ZoomService(
        FlutterAppAuth(),
        FlutterSecureStorage(),
      );
    },
  ),
  ListenableProvider<MeetsProvider>(
    create: (_) => MeetsProvider(
      MeetsRepositoryImpl(
        NetworkInfoImpl.instance,
        MeetsRemoteDataSourceImpl(FirebaseFirestore.instance),
      ),
    ),
  ),
];
