class AssetPath {
  AssetPath._();

  static const String assets = 'assets';
  static const String images = '$assets/images';
}

class ImagePath {
  ImagePath._();

  static const String idCard = '${AssetPath.images}/id_card.png';
}
