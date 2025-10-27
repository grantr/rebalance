class Lot {
  String id;
  double shares;
  double? purchasePrice;
  DateTime? purchaseDate;

  Lot({
    required this.id,
    required this.shares,
    this.purchasePrice,
    this.purchaseDate,
  });
}
