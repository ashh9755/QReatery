import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BillingRecord extends FirestoreRecord {
  BillingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "Items" field.
  List<String>? _items;
  List<String> get items => _items ?? const [];
  bool hasItems() => _items != null;

  // "Price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "Time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "Order_Id" field.
  String? _orderId;
  String get orderId => _orderId ?? '';
  bool hasOrderId() => _orderId != null;

  void _initializeFields() {
    _status = snapshotData['status'] as String?;
    _items = getDataList(snapshotData['Items']);
    _price = castToType<double>(snapshotData['Price']);
    _time = snapshotData['Time'] as DateTime?;
    _orderId = snapshotData['Order_Id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Billing');

  static Stream<BillingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BillingRecord.fromSnapshot(s));

  static Future<BillingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BillingRecord.fromSnapshot(s));

  static BillingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BillingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BillingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BillingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BillingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BillingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBillingRecordData({
  String? status,
  double? price,
  DateTime? time,
  String? orderId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'status': status,
      'Price': price,
      'Time': time,
      'Order_Id': orderId,
    }.withoutNulls,
  );

  return firestoreData;
}

class BillingRecordDocumentEquality implements Equality<BillingRecord> {
  const BillingRecordDocumentEquality();

  @override
  bool equals(BillingRecord? e1, BillingRecord? e2) {
    const listEquality = ListEquality();
    return e1?.status == e2?.status &&
        listEquality.equals(e1?.items, e2?.items) &&
        e1?.price == e2?.price &&
        e1?.time == e2?.time &&
        e1?.orderId == e2?.orderId;
  }

  @override
  int hash(BillingRecord? e) => const ListEquality()
      .hash([e?.status, e?.items, e?.price, e?.time, e?.orderId]);

  @override
  bool isValidKey(Object? o) => o is BillingRecord;
}
