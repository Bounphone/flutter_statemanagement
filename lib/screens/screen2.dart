import 'package:flutter/material.dart';
import 'package:flutter_statemanagement/models/appmodel.dart';
import 'package:flutter_statemanagement/models/notimodel.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Consumer<NotiModel>(
        builder: (context, notiModel, child) => Column(
          children: [
            Text(notiModel.text2),
            Text(notiModel.text1),
            ElevatedButton(
                onPressed: () {
                  notiModel.text2 = 'text 2 in sfd';
                },
                child: Text('Change Value'))
          ],
        ),
      ),
    );
  }
}
