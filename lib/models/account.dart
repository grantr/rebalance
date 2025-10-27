import 'asset.dart';
import 'snapshot.dart';
import 'tax_treatment.dart';

class Account {
  String id;
  String name;
  String institution;
  TaxTreatment taxTreatment;
  bool dividendReinvestment;
  List<Asset>? allowedAssets;
  Account? parentAccount;
  List<Snapshot> snapshots;

  Account({
    required this.id,
    required this.name,
    required this.institution,
    required this.taxTreatment,
    required this.dividendReinvestment,
    this.allowedAssets,
    this.parentAccount,
    this.snapshots = const [],
  });
}
