class Location {
  String name;
  String image;
  String description;
  String country;
  Location({
    required this.name,
    required this.image,
    required this.description,
    required this.country,
  });
}

class LocationProvider {
  static List<Location> locations = [
    Location(
      name: 'Lake Louise',
      image:
          'https://cdn.pixabay.com/photo/2017/05/09/03/46/alberta-2297204_960_720.jpg',
      description:
          'The most famous lake in Alberta, if not the entire country, is Lake Louise in Banff National Park. Set in a long valley with towering mountains framing the scene, the lake has been a destination for camera toting tourists since 1890.',
      country: 'Canada',
    ),
    Location(
      name: 'SeaGull Beack',
      image:
          'https://cdn.pixabay.com/photo/2018/03/16/20/13/seagull-3232350_960_720.jpg',
      description:
          'The largest beach and most popular beach in Yarmouth, it is located on Nantucket Sound and is the ideal beach for swimming and windsurfing. There is a large parking lot with option to pay by the day.',
      country: 'Massachusetts',
    ),
    Location(
      name: 'Burj Tower',
      image:
          'https://cdn.pixabay.com/photo/2017/04/08/10/42/burj-khalifa-2212978_960_720.jpg',
      description:
          'The Burj Khalifa, known as the Burj Dubai prior to its inauguration in 2010, is a skyscraper in Dubai, United Arab Emirates.',
      country: 'UAE',
    ),
  ];
}
