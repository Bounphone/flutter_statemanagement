import 'package:flutter/material.dart';
import 'package:flutter_statemanagement/models/appmodel.dart';
import 'package:flutter_statemanagement/screens/screen2.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First'),
      ),
      body: Consumer<AppModel>(
        builder: (context, appModel, child) => Column(
          children: [
            Text('Text2'),
            Text(appModel.text1),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    appModel.text1 = 'Power';
                  });
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
                },
                child: Text('Change Value'))
          ],
        ),
      ),
    );
  }
}
