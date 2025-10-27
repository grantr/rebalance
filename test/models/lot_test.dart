import 'package:flutter_test/flutter_test.dart';
import 'package:rebalance/models/lot.dart';

void main() {
  group('Lot', () {
    test('constructor correctly assigns all properties', () {
      final purchaseDate = DateTime.now();
      final lot = Lot(
        id: '1',
        shares: 10,
        purchasePrice: 100.0,
        purchaseDate: purchaseDate,
      );

      expect(lot.id, '1');
      expect(lot.shares, 10);
      expect(lot.purchasePrice, 100.0);
      expect(lot.purchaseDate, purchaseDate);
    });

    test('optional properties can be null', () {
      final lot = Lot(
        id: '2',
        shares: 5,
      );

      expect(lot.purchasePrice, isNull);
      expect(lot.purchaseDate, isNull);
    });
  });
}
