import 'package:basics/model/location_model.dart';
import 'package:basics/widget/overlay_box.dart';
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
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 300,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                            ),
                            child: Image.network(
                              LocationProvider.locations[index].image,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 15,
                          top: 15,
                          child: GestureDetector(
                            onTap: () {},
                            child: OverlayBox(
                              child: Icon(
                                Icons.arrow_back_ios_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 25,
                          bottom: 75,
                          child: OverlayBox(
                            child: Icon(
                              Icons.image,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 25,
                          bottom: 25,
                          child: OverlayBox(
                            child: Text(
                              '4.7',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.transparent,
                                  Colors.black54,
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    LocationProvider.locations[index].name,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    LocationProvider.locations[index].country,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        LocationProvider.locations[index].description,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
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
