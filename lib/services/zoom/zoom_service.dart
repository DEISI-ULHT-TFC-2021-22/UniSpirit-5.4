import 'dart:convert';
import 'dart:developer';

import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:projectunispiritfinalt/features/meets/data/model/meets_model.dart';

class ZoomService {
  const ZoomService(this._appAuth, this._secureStorage);

  final FlutterAppAuth _appAuth;
  final FlutterSecureStorage _secureStorage;

  static const auth0Domain = String.fromEnvironment('AUTH0_DOMAIN');
  static const auth0ClientId = String.fromEnvironment('AUTH0_CLIENT_ID');
  static const auth0Issuer = 'https://$auth0Domain';
  static const bundleIdentifier = 'com.example.projectunispiritfinalt';
  static const auth0RedirectUri = 'https://$bundleIdentifier/callback';

  Future<void> authenticate() async {
    try {
      final result = await _appAuth.authorizeAndExchangeCode(
        AuthorizationTokenRequest(
          auth0ClientId,
          auth0RedirectUri,
          issuer: auth0Issuer,
          discoveryUrl: '$auth0Domain/.well-known/openid-configuration',
          allowInsecureConnections: true,
          serviceConfiguration: const AuthorizationServiceConfiguration(
            authorizationEndpoint: 'https://zoom.us/oauth/authorize',
            tokenEndpoint: 'https://zoom.us/oauth/token',
          ),
        ),
      );
      log('$result');
      log('${result?.idToken}');
    } catch (error) {
      log('$error');
    }
  }

  Future<bool> _updateRefreshToken() async {
    try {
      final result = await _appAuth.token(
        TokenRequest(
          auth0ClientId,
          auth0RedirectUri,
          issuer: auth0Issuer,
          refreshToken: '',
        ),
      );

      if (result?.refreshToken != null) {
        await _secureStorage.write(
          key: 'refresh_token',
          value: result?.refreshToken,
        );

        return true;
      }
      return false;
    } catch (error) {
      log('$error');
      return false;
    }
  }

  void _parseIdToken(String idToken) {
    final idTokenParts = idToken.split('.');
    final Map<String, dynamic> idTokenJson = jsonDecode(
      utf8.decode(
        base64Url.decode(
          base64Url.normalize(idTokenParts[1]),
        ),
      ),
    );
  }

  Future<MeetsModel> createMeeting() async {
    const meetingsApi = 'https://api.zoom.us/v2/users/me/meetings';
    // TODO: Replace with a data model
    final meetingDetails = {
      {
        "topic": "My Meeting",
        "agenda": "My Meeting",
        "default_password": false,
        "duration": 45,
        "password": "123456",
        "pre_schedule": true,
        "schedule_for": "jchill@example.com",
        "start_time": "${DateTime.now()}",
        "type": 2,
        "recurrence": {
          "repeat_interval": 1,
          "type": 1,
        },
        "settings": {
          "host_video": true,
          "participant_video": false,
          "join_before_host": false,
          "mute_upon_entry": true,
          "watermark": false,
          "waiting_room": true,
        },
      }
    };

    http.post(
      Uri.parse(meetingsApi),
      // TODO: add authentication headers
      headers: {},
      body: meetingDetails,
    );

    // TODO: implement create meeting
    throw UnimplementedError();
  }
}
