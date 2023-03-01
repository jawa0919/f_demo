import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:universal_html/html.dart' as html;

void windowHistoryLength() {
  if (kIsWeb) {
    debugPrint("length:${html.window.history.length}");
  }
}

void locationReplace(String location, {Object? extra}) {
  if (kIsWeb) {
    log(html.window.location.host);
    // html.window.location.replace(location);
    html.window.location.replace(location);
  }
}

extension WebGoRouter on GoRouter {
  void webGo(String location, {Object? extra}) {
    if (kIsWeb) {
      log("webGo");
      html.window.history.replaceState({}, "Text", location);
      html.window.history.go(0);
    } else {
      go(location, extra: extra);
    }
  }
}
