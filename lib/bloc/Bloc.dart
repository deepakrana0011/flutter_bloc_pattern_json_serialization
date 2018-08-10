import 'package:bloc_pattern_company/model/States.dart';
import 'package:bloc_pattern_company/model/StatesResponseModel.dart';
import 'dart:async';

class StatesBloc {
  final API api;

  Stream<StatesResponse> _states = Stream.empty();

  Stream<StatesResponse> get states => _states;

  StatesBloc(this.api) {
    _states = api.fetchStates().asStream();
  }
}
