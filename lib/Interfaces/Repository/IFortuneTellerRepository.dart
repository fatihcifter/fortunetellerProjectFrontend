

import 'package:fortuneteller/Models/Enums/FortuneType.dart';
import 'package:fortuneteller/Models/Enums/HoroscopeSign.dart';
import 'package:fortuneteller/Models/HoroscopeInfo.dart';
import 'package:fortuneteller/Models/TellerInfos.dart';

abstract class IFortuneTellerRepository {
  Future<Iterable<TellerInfo>> getFortuneTellerInfos(FortuneType fortuneType);
}
