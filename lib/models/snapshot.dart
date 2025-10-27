import 'holding.dart';

class Snapshot {
  String id;
  DateTime creationTimestamp;
  String accountId;
  List<Holding> holdings;

  Snapshot({
    required this.id,
    required this.creationTimestamp,
    required this.accountId,
    required this.holdings,
  });
}
