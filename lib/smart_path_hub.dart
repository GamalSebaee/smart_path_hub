library smart_path_hub;

import 'package:app_links/app_links.dart';
import 'package:flutter/cupertino.dart';
import 'package:smart_path_hub/smart_path_hub_utils.dart';

import 'deep_link_path_data.dart';

class SmartPathHub {
  static const smartPathHubScheme = "https";
  static const smartPathHubHost = "gstech.mtgofa.com";
  final _appLinks = AppLinks();

  void init({required ValueNotifier<DeepLinkPathData> listenCallback}) {
    _appLinks.uriLinkStream.listen((uri) {
      var deepLinkPathData = DeepLinkPathData();
      deepLinkPathData.fullUri = uri;
      listenCallback.value = deepLinkPathData;
    });
  }

  Future<DeepLinkPathData> createDeepLink(
      {Map<String, dynamic>? uriData}) async {
    Map<String, String> queryParameters = {};
    uriData?.forEach((key, value) {
      if (value != null) {
        queryParameters[key] = "$value";
      }
    });

    Uri uri = Uri(
      scheme: smartPathHubScheme,
      host: smartPathHubHost,
      path: encodeUrlPath(queryParameters: queryParameters),
    );
    var deepLinkPathData = DeepLinkPathData();
    deepLinkPathData.fullUri = uri;

    return deepLinkPathData;
  }
}
