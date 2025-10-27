import 'package:flutter_test/flutter_test.dart';
import 'package:rebalance/models/asset.dart';

void main() {
  group('Asset', () {
    test('constructor correctly assigns all properties', () {
      final asset = Asset(
        ticker: 'VOO',
        name: 'Vanguard S&P 500 ETF',
        type: 'ETF',
        category: 'US Equity',
        expenseRatio: 0.03,
      );

      expect(asset.ticker, 'VOO');
      expect(asset.name, 'Vanguard S&P 500 ETF');
      expect(asset.type, 'ETF');
      expect(asset.category, 'US Equity');
      expect(asset.expenseRatio, 0.03);
    });

    test('expenseRatio defaults to 0.0 when not provided', () {
      final asset = Asset(
        ticker: 'VTI',
        name: 'Vanguard Total Stock Market ETF',
        type: 'ETF',
        category: 'US Equity',
      );

      expect(asset.expenseRatio, 0.0);
    });

    test('ticker can be null', () {
      final asset = Asset(
        name: 'My Savings Account',
        type: 'Cash',
        category: 'Cash',
      );

      expect(asset.ticker, isNull);
    });
  });
}
