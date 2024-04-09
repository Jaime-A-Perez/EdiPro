

import 'package:edi_pro/domain/entities/sheduling_entity.dart';

abstract class DatasourceSheduling {

  Future<ShedulingEntity> getSheduling();

}