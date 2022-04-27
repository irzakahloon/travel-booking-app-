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
                              onTap: () {
                                Navigator.pop(context);
                              },
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
                  onPressed: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      )),
                      builder: (context) => SingleChildScrollView(
                        child: Column(
                          children: [
                            const Icon(
                              Icons.remove_rounded,
                              size: 40,
                              color: Colors.grey,
                            ),
                            const Center(
                              child: Text(
                                'Details',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                                vertical: 4,
                              ),
                              child: Row(
                                children: const [
                                  Text(
                                    'From',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    'To',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 130,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'LHR',
                                          style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'Lahore',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  CircleAvatar(
                                    backgroundColor: Colors.teal,
                                    radius: 22,
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Colors.white,
                                      child: Icon(
                                        Icons.flight_rounded,
                                        color: Colors.teal,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  SizedBox(
                                    width: 130,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: const [
                                        Text(
                                          'NYK',
                                          style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'New York',
                                          style: TextStyle(
                                              fontSize: 16, color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const Text(
                                    'Sort by:  ',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    width: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Container(
                                        padding: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          color: Colors.grey.shade300,
                                        ),
                                        child: Row(
                                          children: [
                                            Text('Price'),
                                            Spacer(),
                                            Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                      color: Colors.grey.shade300,
                                    ),
                                    child: const Icon(
                                      Icons.tune,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            payments(0),
                            payments(1),
                            payments(2),
                            payments(3),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 50,
                                width: 180,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateColor.resolveWith(
                                      (states) => Colors.teal,
                                    ),
                                    shape: MaterialStateProperty.resolveWith(
                                      (states) => RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text(
                                    'BOOK',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.horizontal_rule_rounded,
                          color: Colors.black,
                          size: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Feb 17',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  'Lahore - New York',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '02.55-19.55',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '989\$',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding payments(int color) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
              width: 50,
              height: 50,
              child: Icon(
                Icons.public,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25),
                  ),
                  color: color == 0 ? Colors.teal : Colors.grey.shade300,
                ),
                height: 100,
                width: 350,
                child: Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'LHR   -  NYK',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: color == 0 ? Colors.white : Colors.black,
                              ),
                            ),
                            Text(
                              '11.00 - 16.00',
                              style: TextStyle(
                                fontSize: 17,
                                color: color == 0
                                    ? Colors.white60
                                    : Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                      VerticalDivider(
                        color: color == 0 ? Colors.white60 : Colors.black54,
                        indent: 15,
                        endIndent: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Business\nClass',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17,
                            color: color == 0 ? Colors.white60 : Colors.black54,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          '\$987',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: color == 0 ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
