import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "orderref" field.
  DocumentReference? _orderref;
  DocumentReference? get orderref => _orderref;
  bool hasOrderref() => _orderref != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "food_items" field.
  List<String>? _foodItems;
  List<String> get foodItems => _foodItems ?? const [];
  bool hasFoodItems() => _foodItems != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "total_price" field.
  double? _totalPrice;
  double get totalPrice => _totalPrice ?? 0.0;
  bool hasTotalPrice() => _totalPrice != null;

  // "order_id" field.
  String? _orderId;
  String get orderId => _orderId ?? '';
  bool hasOrderId() => _orderId != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _orderref = snapshotData['orderref'] as DocumentReference?;
    _userId = snapshotData['user_id'] as String?;
    _foodItems = getDataList(snapshotData['food_items']);
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _totalPrice = castToType<double>(snapshotData['total_price']);
    _orderId = snapshotData['order_id'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('orders')
          : FirebaseFirestore.instance.collectionGroup('orders');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('orders').doc(id);

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  DateTime? timestamp,
  String? status,
  DocumentReference? orderref,
  String? userId,
  DocumentReference? userRef,
  double? totalPrice,
  String? orderId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'timestamp': timestamp,
      'status': status,
      'orderref': orderref,
      'user_id': userId,
      'user_ref': userRef,
      'total_price': totalPrice,
      'order_id': orderId,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.timestamp == e2?.timestamp &&
        e1?.status == e2?.status &&
        e1?.orderref == e2?.orderref &&
        e1?.userId == e2?.userId &&
        listEquality.equals(e1?.foodItems, e2?.foodItems) &&
        e1?.userRef == e2?.userRef &&
        e1?.totalPrice == e2?.totalPrice &&
        e1?.orderId == e2?.orderId;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.timestamp,
        e?.status,
        e?.orderref,
        e?.userId,
        e?.foodItems,
        e?.userRef,
        e?.totalPrice,
        e?.orderId
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
