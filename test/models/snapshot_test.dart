import 'package:flutter_test/flutter_test.dart';
import 'package:rebalance/models/snapshot.dart';
import 'package:rebalance/models/holding.dart';
import 'package:rebalance/models/lot.dart';

void main() {
  group('Snapshot', () {
    test('constructor correctly assigns all properties', () {
      final holding1 = Holding(id: 'h1', accountId: 'a1', assetId: 'asset1', lots: [Lot(id: 'l1', shares: 10)]);
      final holding2 = Holding(id: 'h2', accountId: 'a1', assetId: 'asset2', lots: [Lot(id: 'l2', shares: 5)]);
      final creationTimestamp = DateTime.now();
      final snapshot = Snapshot(
        id: 's1',
        accountId: 'a1',
        creationTimestamp: creationTimestamp,
        holdings: [holding1, holding2],
      );

      expect(snapshot.id, 's1');
      expect(snapshot.accountId, 'a1');
      expect(snapshot.creationTimestamp, creationTimestamp);
      expect(snapshot.holdings, [holding1, holding2]);
    });
  });
}
