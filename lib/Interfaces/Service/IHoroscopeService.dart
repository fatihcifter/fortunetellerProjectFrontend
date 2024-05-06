import 'package:fortuneteller/Models/Enums/HoroscopeSign.dart';
import 'package:fortuneteller/Models/HoroscopeInfo.dart';

abstract class IHoroscopeService {
  Future<Iterable<HoroscopeInfo>> getHoroscopeInfo(HoroscopeSign horoscopeSign);
}
