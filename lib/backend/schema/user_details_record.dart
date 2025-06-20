import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDetailsRecord extends FirestoreRecord {
  UserDetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "Phone" field.
  int? _phone;
  int get phone => _phone ?? 0;
  bool hasPhone() => _phone != null;

  // "Section" field.
  String? _section;
  String get section => _section ?? '';
  bool hasSection() => _section != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _email = snapshotData['email'] as String?;
    _image = snapshotData['image'] as String?;
    _phone = castToType<int>(snapshotData['Phone']);
    _section = snapshotData['Section'] as String?;
    _uid = snapshotData['uid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userDetails');

  static Stream<UserDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserDetailsRecord.fromSnapshot(s));

  static Future<UserDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserDetailsRecord.fromSnapshot(s));

  static UserDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserDetailsRecordData({
  String? name,
  String? email,
  String? image,
  int? phone,
  String? section,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'email': email,
      'image': image,
      'Phone': phone,
      'Section': section,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserDetailsRecordDocumentEquality implements Equality<UserDetailsRecord> {
  const UserDetailsRecordDocumentEquality();

  @override
  bool equals(UserDetailsRecord? e1, UserDetailsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.email == e2?.email &&
        e1?.image == e2?.image &&
        e1?.phone == e2?.phone &&
        e1?.section == e2?.section &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(UserDetailsRecord? e) => const ListEquality()
      .hash([e?.name, e?.email, e?.image, e?.phone, e?.section, e?.uid]);

  @override
  bool isValidKey(Object? o) => o is UserDetailsRecord;
}
