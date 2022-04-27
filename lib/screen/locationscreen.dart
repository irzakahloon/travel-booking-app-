import 'package:flutter/material.dart';

import '../model/location_model.dart';
import '../widget/overlay_box.dart';

class LocationScreen extends StatelessWidget {
  LocationScreen({Key? key, required this.index}) : super(key: key);
  int index;
  static String routeName = '/detail-page';
  @override
  Widget build(BuildContext context) {
    container(Color color) => Container(
          height: 170,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                SizedBox(
                  width: 300,
                  height: 170,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      LocationProvider.locations[index].image,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -15,
                  left: 62,
                  child: SizedBox(
                    height: 40,
                    width: 180,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                          (states) => color,
                        ),
                        shape: MaterialStateProperty.resolveWith(
                          (states) => RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            LocationProvider.locations[index].name,
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            '6.5k',
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 250,
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
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
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
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Top Activity',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'View All',
                                style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            container(Colors.teal),
                            container(Colors.redAccent),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
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
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {},
                  child: Column(
                    children: [
                      Icon(
                        Icons.horizontal_rule_rounded,
                        color: Colors.black,
                        size: 40,
                      ),
                      Text(
                        'Button',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
