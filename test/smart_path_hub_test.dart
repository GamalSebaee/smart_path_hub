import 'package:flutter_test/flutter_test.dart';

import 'package:smart_path_hub/smart_path_hub.dart';
import 'package:smart_path_hub/smart_path_hub_utils.dart';

void main() {
  test('TestUriEncode', () {
    final smartPathHub = SmartPathHub();
    smartPathHub.createDeepLink(uriData: {
      "videoDetails": 40,
      "doctorId":10
    }).then((value) => {
      print("urlData ${value.shareableUri}"),
      print("urlData ${value.privateUri}"),
      print("urlData ${value.uriData}"),
    });



   /* decodedUrl(
      decodedValue: "https://gstech.mtgofa.com/ZGVlcGxpbms/dmlkZW9EZXRhaWxzPTQw"
    );*/
    //https://gstech.mtgofa.com/ZGVlcGxpbms/dmlkZW9EZXRhaWxzPTQw
    /*  final calculator = Calculator();
    expect(calculator.addOne(2), 3);
    expect(calculator.addOne(-7), -6);
    expect(calculator.addOne(0), 1);*/
  });
}
