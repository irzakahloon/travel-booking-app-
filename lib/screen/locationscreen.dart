import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  LocationScreen({Key? key, required this.index}) : super(key: key);
  int index;
  static String routeName = '/detail-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.teal,
              ),
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                child: FlatButton(
                  color: Colors.white,
                  onPressed: () {},
                  child: Text('Button'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
