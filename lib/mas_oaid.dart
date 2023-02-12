
import 'mas_oaid_platform_interface.dart';

class MasOaid {
  Future<String?> getOAID() {
    return MasOaidPlatform.instance.getOAID();
  }
}
