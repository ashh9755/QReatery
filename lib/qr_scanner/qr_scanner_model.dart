import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'qr_scanner_widget.dart' show QrScannerWidget;
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class QrScannerModel extends FlutterFlowModel<QrScannerWidget> {
  ///  Local state fields for this page.

  List<String> foodItemsList = [];
  void addToFoodItemsList(String item) => foodItemsList.add(item);
  void removeFromFoodItemsList(String item) => foodItemsList.remove(item);
  void removeAtIndexFromFoodItemsList(int index) =>
      foodItemsList.removeAt(index);
  void insertAtIndexInFoodItemsList(int index, String item) =>
      foodItemsList.insert(index, item);
  void updateFoodItemsListAtIndex(int index, Function(String) updateFn) =>
      foodItemsList[index] = updateFn(foodItemsList[index]);

  OrdersRecord? scannedOrder;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  var scannedOrderId = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
