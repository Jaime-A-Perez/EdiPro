
import 'dart:convert';

import 'package:edi_pro/domain/datasources/datasource_sheduling.dart';
import 'package:edi_pro/domain/entities/sheduling_entity.dart';
import 'package:edi_pro/infrastructure/mapper/mapper_sheduling.dart';
import 'package:edi_pro/infrastructure/models/model_sheduling.dart';
import 'package:flutter/services.dart';

class DatasourceShedulingImpl extends DatasourceSheduling {
  @override
  Future<ShedulingEntity> getSheduling() async {
    final String response = await rootBundle.loadString('assets/json/edipro.json');
    final data = await json.decode(response);
    
    final ModelSheduling dataModeling = ModelSheduling.fromJson(data);

    return MapperSheduling.shedulingToShedulingEntity(dataModeling);
  }


}