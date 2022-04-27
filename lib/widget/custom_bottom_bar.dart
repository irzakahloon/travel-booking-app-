import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 75,
      ),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.teal,
        ),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    iconSize: 45,
                    icon: const Icon(
                      Icons.home_rounded,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  const Icon(
                    Icons.lens,
                    size: 7,
                    color: Colors.white,
                  ),
                ],
              ),
              IconButton(
                iconSize: 35,
                icon: const Icon(
                  Icons.explore_outlined,
                  color: Colors.white70,
                ),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 35,
                icon: const Icon(
                  Icons.star_border_rounded,
                  color: Colors.white70,
                ),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 35,
                icon: const Icon(
                  Icons.person_outline_rounded,
                  color: Colors.white70,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
