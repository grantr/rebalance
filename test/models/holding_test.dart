import 'package:flutter_test/flutter_test.dart';
import 'package:rebalance/models/holding.dart';
import 'package:rebalance/models/lot.dart';

void main() {
  group('Holding', () {
    test('constructor correctly assigns all properties', () {
      final lot1 = Lot(id: '1', shares: 10);
      final lot2 = Lot(id: '2', shares: 5);
      final holding = Holding(
        id: 'h1',
        accountId: 'a1',
        assetId: 'asset1',
        lots: [lot1, lot2],
      );

      expect(holding.id, 'h1');
      expect(holding.accountId, 'a1');
      expect(holding.assetId, 'asset1');
      expect(holding.lots, [lot1, lot2]);
    });
  });
}
