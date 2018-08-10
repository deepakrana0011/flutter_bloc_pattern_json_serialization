import 'package:flutter/widgets.dart';
import 'package:bloc_pattern_company/bloc/Bloc.dart';
import 'package:bloc_pattern_company/model/States.dart';
class StatesProvider extends InheritedWidget{
  final StatesBloc statesBloc;
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static StatesBloc of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(StatesProvider) as StatesProvider)
          .statesBloc;

  StatesProvider({Key key, StatesBloc statesBloc, Widget child})
      : this.statesBloc = statesBloc ?? StatesBloc(API()),
        super(child: child, key: key);
}