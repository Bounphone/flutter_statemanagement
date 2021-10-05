import 'package:flutter/material.dart';
import 'package:flutter_statemanagement/models/appmodel.dart';
import 'package:flutter_statemanagement/models/notimodel.dart';
import 'package:flutter_statemanagement/screens/screen1.dart';
import 'package:provider/provider.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AppModel>(create: (_) => AppModel()),
        ChangeNotifierProvider<NotiModel>(create: (_) => NotiModel())
      ],
      child: MaterialApp(
        home: FirstScreen(),
      ),
    );
  }
}
