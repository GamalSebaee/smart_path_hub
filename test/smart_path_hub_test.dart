import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_path_hub/smart_path_hub.dart';

void main() {
  test('TestUriEncode', () async{
    final smartPathHub = SmartPathHub();
    Map<String,dynamic> queryPar={};
   var data= await smartPathHub.createDeepLink(uriData: {
      "videoDetails": 40,
      "doctorId":10
    });
    debugPrint("shareableUri ${data.printString}");
    queryPar=data.uriData;
    expect(queryPar, {
      "videoDetails": '40',
      "doctorId":'10'
    });
  });
}
