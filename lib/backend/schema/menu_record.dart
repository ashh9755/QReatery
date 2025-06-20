import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenuRecord extends FirestoreRecord {
  MenuRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "item_id" field.
  String? _itemId;
  String get itemId => _itemId ?? '';
  bool hasItemId() => _itemId != null;

  // "Price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
    _itemId = snapshotData['item_id'] as String?;
    _price = castToType<int>(snapshotData['Price']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Menu');

  static Stream<MenuRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MenuRecord.fromSnapshot(s));

  static Future<MenuRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MenuRecord.fromSnapshot(s));

  static MenuRecord fromSnapshot(DocumentSnapshot snapshot) => MenuRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MenuRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MenuRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MenuRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MenuRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMenuRecordData({
  String? name,
  String? image,
  String? itemId,
  int? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'image': image,
      'item_id': itemId,
      'Price': price,
    }.withoutNulls,
  );

  return firestoreData;
}

class MenuRecordDocumentEquality implements Equality<MenuRecord> {
  const MenuRecordDocumentEquality();

  @override
  bool equals(MenuRecord? e1, MenuRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.image == e2?.image &&
        e1?.itemId == e2?.itemId &&
        e1?.price == e2?.price;
  }

  @override
  int hash(MenuRecord? e) =>
      const ListEquality().hash([e?.name, e?.image, e?.itemId, e?.price]);

  @override
  bool isValidKey(Object? o) => o is MenuRecord;
}
