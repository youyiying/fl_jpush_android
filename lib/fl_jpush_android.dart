import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class FlJPushForAndroid {
  FlJPushForAndroid._();

  final MethodChannel _channel = const MethodChannel('fl_jpush_android');

  /// 请求OPPO通知权限
  Future<bool> requestNotificationPermissionWithOPPO() async {
    if (!_isAndroid) return false;
    final bool? state = await _channel
        .invokeMethod<bool?>('requestNotificationPermissionWithOPPO');
    return state ?? false;
  }

  /// 校验魅族通知
  Future<bool> checkNotificationMessageWithMEIZU() async {
    if (!_isAndroid) return false;
    final bool? state =
        await _channel.invokeMethod<bool?>('checkNotificationMessageWithMEIZU');
    return state ?? false;
  }

  bool get _isAndroid => defaultTargetPlatform == TargetPlatform.android;
}
