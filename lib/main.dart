import 'package:flutter/material.dart';
import 'package:bloc_pattern_company/provider/StatesProvider.dart';
import 'package:bloc_pattern_company/bloc/Bloc.dart';
import 'package:bloc_pattern_company/model/States.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StatesProvider(
      statesBloc: StatesBloc(API()),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final movieBloc = StatesProvider.of(context);
    return new Scaffold(
      appBar: AppBar(
        title: Text("Bloc Example"),
      ),
      body: Center(
        child: StreamBuilder(
            stream: movieBloc.states,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.statesList[0].name);
              } else {
                if (!snapshot.hasData)
                  return Center(
                    child: CircularProgressIndicator(),
                  );
              }
            }),
      ),
    );
  }
}
