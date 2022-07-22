import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfo {
  Future<bool> get hasConnection;
}

class NetworkInfoImpl implements NetworkInfo {
  NetworkInfoImpl._();

  static NetworkInfoImpl instance = NetworkInfoImpl._();

  @override
  Future<bool> get hasConnection => _isConnected();

  static Future<bool> _isConnected() async {
    if (await _hasNoNetwork()) return false;
    if (await _hasNetwork()) return true;
    return false;
  }

  static Future<bool> _hasNetwork() async {
    final ConnectivityResult result = await Connectivity().checkConnectivity();
    return result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi;
  }

  static Future<bool> _hasNoNetwork() async {
    final ConnectivityResult result = await Connectivity().checkConnectivity();
    return result == ConnectivityResult.none || !(await _hasNetwork());
  }

  Stream<ConnectivityResult> connectionChanged() {
    return Connectivity().onConnectivityChanged;
  }
}
