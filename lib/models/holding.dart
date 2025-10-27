import 'lot.dart';

class Holding {
  String id;
  String accountId;
  String assetId;
  List<Lot> lots;

  Holding({
    required this.id,
    required this.accountId,
    required this.assetId,
    required this.lots,
  });
}
