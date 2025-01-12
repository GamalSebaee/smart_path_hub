import 'dart:convert';

import 'package:smart_path_hub/smart_path_hub.dart';

const _smartPathHubDomain =
    "${SmartPathHub.smartPathHubScheme}://${SmartPathHub.smartPathHubHost}/";
const smartPathHubPath = "deeplink";

String encodeUrlPath({required Map<String, dynamic> queryParameters}) {
  Uri uriData = Uri(
    path: smartPathHubPath,
    queryParameters: queryParameters,
  );
  String encoded = base64.encode(utf8.encode(uriData.toString()));
  return encoded;
}

Uri decodedUrl({required String encodedUrl}) {
  String encodedUrlVal = encodedUrl.replaceFirst(_smartPathHubDomain, '');
  String decodedUrl = utf8.decode(base64.decode(encodedUrlVal));
  decodedUrl = "$_smartPathHubDomain$decodedUrl";
  Uri decodedUri = Uri.parse(decodedUrl);
  return decodedUri;
}
