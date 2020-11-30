import 'package:aspirationasia/utils/ImagePaths.dart';

class AdventuresModel {
  String name;
  String image;

  AdventuresModel(this.name, this.image);
}

List<AdventuresModel> adventures = adventuresData
    .map(
      (item) =>
      AdventuresModel(
          item["name"], item["image"]),
)
    .toList();

var adventuresData = [
  {
    "name": "Paragliding",
    "image": ImagePaths.PARAGLIDING
  },
  {
    "name": "Rafting",
    "image": ImagePaths.RAFTING
  },
  {
    "name": "Bungee",
    "image": ImagePaths.BUNGEE_JUMPING
  },
  {
    "name": "Hiking",
    "image": ImagePaths.HIKING
  }
];