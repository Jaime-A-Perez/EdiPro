

import 'package:edi_pro/domain/entities/sheduling_entity.dart';
import 'package:edi_pro/infrastructure/datasource_impl/datasource_sheduling_imp.dart';
import 'package:flutter/material.dart';

class ShedulingProvider extends ChangeNotifier {

  ShedulingEntity? _shedulingEntity;

  ShedulingEntity? get shedulingEntity => _shedulingEntity;

  set shedulingEntity( ShedulingEntity? value ) {
    _shedulingEntity = value;
    notifyListeners();
  }

  Future<void> loadData() async {

    final data = await DatasourceShedulingImpl().getSheduling();

    shedulingEntity = data;
    notifyListeners();

  }
}