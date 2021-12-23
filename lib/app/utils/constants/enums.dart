import 'strings.dart';

enum AstrologerSortingOrder {
  experienceHighToLow,
  experienceLowToHigh,
  priceHighToLow,
  priceLowToHigh
}

final astrologerSortingOrders = EnumValues({
  '${Strings.experience} - ${Strings.highToLow}':
      AstrologerSortingOrder.experienceHighToLow,
  '${Strings.experience} - ${Strings.lowToHigh}':
      AstrologerSortingOrder.experienceLowToHigh,
  '${Strings.price} - ${Strings.highToLow}':
      AstrologerSortingOrder.priceHighToLow,
  '${Strings.price} - ${Strings.lowToHigh}':
      AstrologerSortingOrder.priceLowToHigh,
});

enum FontType { LIGHT, REGULAR, MEDIUM, SEMI_BOLD, BOLD }

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
