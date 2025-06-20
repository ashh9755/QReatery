// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartitemTypeStruct extends FFFirebaseStruct {
  CartitemTypeStruct({
    DocumentReference? menuitemRef,
    int? quantity,
    String? name,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _menuitemRef = menuitemRef,
        _quantity = quantity,
        _name = name,
        super(firestoreUtilData);

  // "menuitemRef" field.
  DocumentReference? _menuitemRef;
  DocumentReference? get menuitemRef => _menuitemRef;
  set menuitemRef(DocumentReference? val) => _menuitemRef = val;

  bool hasMenuitemRef() => _menuitemRef != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 1;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  // "name" field.
  String? _name;
  String get name => _name ?? 'rice';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static CartitemTypeStruct fromMap(Map<String, dynamic> data) =>
      CartitemTypeStruct(
        menuitemRef: data['menuitemRef'] as DocumentReference?,
        quantity: castToType<int>(data['quantity']),
        name: data['name'] as String?,
      );

  static CartitemTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? CartitemTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'menuitemRef': _menuitemRef,
        'quantity': _quantity,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'menuitemRef': serializeParam(
          _menuitemRef,
          ParamType.DocumentReference,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static CartitemTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartitemTypeStruct(
        menuitemRef: deserializeParam(
          data['menuitemRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Menu'],
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CartitemTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CartitemTypeStruct &&
        menuitemRef == other.menuitemRef &&
        quantity == other.quantity &&
        name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([menuitemRef, quantity, name]);
}

CartitemTypeStruct createCartitemTypeStruct({
  DocumentReference? menuitemRef,
  int? quantity,
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CartitemTypeStruct(
      menuitemRef: menuitemRef,
      quantity: quantity,
      name: name,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CartitemTypeStruct? updateCartitemTypeStruct(
  CartitemTypeStruct? cartitemType, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cartitemType
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCartitemTypeStructData(
  Map<String, dynamic> firestoreData,
  CartitemTypeStruct? cartitemType,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cartitemType == null) {
    return;
  }
  if (cartitemType.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cartitemType.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cartitemTypeData =
      getCartitemTypeFirestoreData(cartitemType, forFieldValue);
  final nestedData =
      cartitemTypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cartitemType.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCartitemTypeFirestoreData(
  CartitemTypeStruct? cartitemType, [
  bool forFieldValue = false,
]) {
  if (cartitemType == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cartitemType.toMap());

  // Add any Firestore field values
  cartitemType.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCartitemTypeListFirestoreData(
  List<CartitemTypeStruct>? cartitemTypes,
) =>
    cartitemTypes?.map((e) => getCartitemTypeFirestoreData(e, true)).toList() ??
    [];
