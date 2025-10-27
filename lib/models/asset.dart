class Asset {
  String? ticker;
  String name;
  String type;
  String category;
  double expenseRatio;

  Asset({
    this.ticker,
    required this.name,
    required this.type,
    required this.category,
    this.expenseRatio = 0.0,
  });
}
