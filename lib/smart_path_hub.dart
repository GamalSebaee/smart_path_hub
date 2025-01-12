library smart_path_hub;
import 'package:app_links/app_links.dart';
/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

class SmartPathHub{

void init(){
  final appLinks = AppLinks(); // AppLinks is singleton

// Subscribe to all events (initial link and further)
  final sub = appLinks.uriLinkStream.listen((uri) {
/*    printLog("appLinks data is $uri");
    showMessage("appLinks data is $uri");*/
  });
}

}

