import 'dart:convert';

import 'package:smart_path_hub/smart_path_hub.dart';

String encodeUrlPath({required Map<String, dynamic> queryParameters}) {
  Uri uriData = Uri(
    path: SmartPathHub.smartPathHubPath,
    queryParameters: queryParameters,
  );
  String encoded = base64.encode(utf8.encode(uriData.toString()));
  return encoded;
}

Uri decodedUrl({required String encodedUrl}) {
  String encodedUrlVal =
      encodedUrl.replaceFirst(SmartPathHub.smartPathHubDomain, '');
  String decoded = utf8.decode(base64.decode(encodedUrlVal));
  decoded="${SmartPathHub.smartPathHubDomain}$decoded";
  Uri decodedUri = Uri.parse(decoded);
  return decodedUri;
}
