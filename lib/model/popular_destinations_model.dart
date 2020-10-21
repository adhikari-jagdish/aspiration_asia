class PopularDestinationsModel {
  String name;
  String country;
  String image;

  PopularDestinationsModel(this.name, this.country, this.image);
}

List<PopularDestinationsModel> populars = popularsData
    .map(
      (item) => PopularDestinationsModel(
          item["name"], item["country"], item["image"]),
    )
    .toList();

var popularsData = [
  {
    "name": "Pokhara",
    "country": "Nepal",
    "image": "https://i.ibb.co/JpkLM91/pokhara-nepal.gif"
  },
  {
    "name": "Beach",
    "country": "Maldives",
    "image": "https://i.ibb.co/XF0dghw/maldives-nepal.jpg"
  },
  {
    "name": "Swoyambunath",
    "country": "Nepal",
    "image": "https://i.ibb.co/1b9HFBv/swoyambunath-nepal.jpg"
  },
  {
    "name": "Annapurna",
    "country": "Nepal",
    "image": "https://i.ibb.co/DgVZvxM/annapurna-base-camp-nepal.jpg"
  }
];
