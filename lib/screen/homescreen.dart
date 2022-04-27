import '../model/location_model.dart';
import '../screen/locationscreen.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../widget/custom_bottom_bar.dart';
import '../widget/overlay_box.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  static String routeName = '/';
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: Container(
        height: 50,
        width: 50,
        margin: EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Icon(
          Icons.menu_rounded,
          color: Colors.black,
        ),
      ),
      title: Text(
        'Discover',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      actions: [
        Container(
          height: 50,
          width: 50,
          margin: EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(
            Icons.search_rounded,
            color: Colors.black,
          ),
        ),
      ],
      centerTitle: true,
    );
    return Scaffold(
      appBar: appBar,
      backgroundColor: Colors.grey.shade100,
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextButton(
                            child: Column(
                              children: [
                                Icon(
                                  Icons.lens,
                                  size: 7,
                                  color: Colors.teal,
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  'Indonesia',
                                  style: TextStyle(
                                    color: Colors.teal,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {},
                          ),
                          TextButton(
                            child: Text(
                              'China',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            onPressed: () {},
                          ),
                          TextButton(
                            child: Text(
                              'Veitnam',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            onPressed: () {},
                          ),
                          TextButton(
                            child: Text(
                              'Indonesia',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 275,
                      child: Swiper(
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      LocationScreen(index: index))),
                            );
                          },
                          child: Container(
                            width: 275,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 200,
                                      width: MediaQuery.of(context).size.width,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Image.network(
                                          LocationProvider
                                              .locations[index].image,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 15,
                                      top: 15,
                                      child: OverlayBox(
                                        child: Text(
                                          '4.7',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            LocationProvider
                                                .locations[index].name,
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Icon(
                                            Icons.more_vert,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.bed,
                                            color: Colors.teal,
                                          ),
                                          Text(
                                            'Resturant',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        itemCount: LocationProvider.locations.length,
                        itemHeight: 400,
                        itemWidth: 200,
                        viewportFraction: 0.5,
                        scale: 0.7,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Top Locations',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'View All',
                              style: TextStyle(
                                color: Colors.teal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 100,
                            width: 220,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.network(
                                      LocationProvider.locations[0].image,
                                      width: 85,
                                      fit: BoxFit.fill,
                                      height: 85,
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      LocationProvider.locations[0].name,
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      LocationProvider.locations[0].country,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 220,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.network(
                                      LocationProvider.locations[1].image,
                                      width: 85,
                                      fit: BoxFit.fill,
                                      height: 85,
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      LocationProvider.locations[1].name,
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      LocationProvider.locations[1].country,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            CustomBottomAppBar(),
          ],
        ),
      ),
    );
  }
}
