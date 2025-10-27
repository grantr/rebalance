import 'package:flutter_test/flutter_test.dart';
import 'package:rebalance/models/account.dart';
import 'package:rebalance/models/asset.dart';
import 'package:rebalance/models/snapshot.dart';
import 'package:rebalance/models/tax_treatment.dart';
import 'package:rebalance/models/holding.dart';
import 'package:rebalance/models/lot.dart';

void main() {
  group('Account', () {
    test('constructor correctly assigns all properties', () {
      final asset1 = Asset(name: 'Asset 1', type: 'ETF', category: 'Equity');
      final asset2 = Asset(name: 'Asset 2', type: 'ETF', category: 'Equity');
      final snapshot = Snapshot(
        id: 's1',
        accountId: 'a1',
        creationTimestamp: DateTime.now(),
        holdings: [
          Holding(id: 'h1', accountId: 'a1', assetId: 'asset1', lots: [Lot(id: 'l1', shares: 10)])
        ],
      );
      final parentAccount = Account(
        id: 'p1',
        name: 'Parent Account',
        institution: 'Parent Bank',
        taxTreatment: TaxTreatment.taxable,
        dividendReinvestment: true,
      );

      final account = Account(
        id: 'a1',
        name: 'My Account',
        institution: 'My Bank',
        taxTreatment: TaxTreatment.taxFree,
        dividendReinvestment: false,
        allowedAssets: [asset1, asset2],
        parentAccount: parentAccount,
        snapshots: [snapshot],
      );

      expect(account.id, 'a1');
      expect(account.name, 'My Account');
      expect(account.institution, 'My Bank');
      expect(account.taxTreatment, TaxTreatment.taxFree);
      expect(account.dividendReinvestment, false);
      expect(account.allowedAssets, [asset1, asset2]);
      expect(account.parentAccount, parentAccount);
      expect(account.snapshots, [snapshot]);
    });

    test('optional properties can be null', () {
      final account = Account(
        id: 'a2',
        name: 'Simple Account',
        institution: 'Simple Bank',
        taxTreatment: TaxTreatment.taxDeferred,
        dividendReinvestment: true,
      );

      expect(account.allowedAssets, isNull);
      expect(account.parentAccount, isNull);
    });

    test('snapshots defaults to empty list', () {
      final account = Account(
        id: 'a3',
        name: 'New Account',
        institution: 'New Bank',
        taxTreatment: TaxTreatment.taxable,
        dividendReinvestment: true,
      );

      expect(account.snapshots, isEmpty);
    });
  });
}
