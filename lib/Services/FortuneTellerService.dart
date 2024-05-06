import 'package:fortuneteller/Interfaces/Repository/IFortuneTellerRepository.dart';
import 'package:fortuneteller/Interfaces/Service/IFortuneTellerService.dart';
import 'package:fortuneteller/Models/Enums/FortuneType.dart';
import 'package:fortuneteller/Models/TellerInfos.dart';
import 'package:fortuneteller/Repository/FortuneTellerRepository.dart';


class FortuneTellerService implements IFortuneTellerService {
  final IFortuneTellerRepository _userRepository = FortuneTellerRepository();  

  @override
    Future<Iterable<TellerInfo>> getFortuneTellerInfos(FortuneType fortuneType)async {
    try {
    Iterable<TellerInfo>  model = await _userRepository.getFortuneTellerInfos(fortuneType);
      return model;
    } catch (e) {
      Error();
      return <TellerInfo>[];
    }
  }

}

