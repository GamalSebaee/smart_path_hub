import 'package:smart_path_hub/smart_path_hub_utils.dart';

class DeepLinkPathData {
  Uri? _fullUri;

  String? get shareableShortUri => _fullUri?.toString();

  String? get shareableUri => _fullUri?.toString();

  Uri? get privateUri =>
      decodedUrl(encodedUrl: _fullUri?.toString() ?? '');

  Map<String, dynamic> get uriData => privateUri?.queryParameters ?? {};

  set fullUri(Uri value) {
    _fullUri = value;
  }

  String get printString => '_fullUri => $_fullUri\n'
      'privateUri => $privateUri\n'
      'shareableShortUri => $shareableShortUri\n'
      'shareableUri => $shareableUri\n'
      'uriData => $uriData\n'
      'shareableUri => $shareableUri';

  @override
  String toString() {
    return 'DeepLinkPathData{_fullUri: $_fullUri}';
  }
}
