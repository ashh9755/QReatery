import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'product_list_widget.dart' show ProductListWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class ProductListModel extends FlutterFlowModel<ProductListWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for inputsearch widget.
  FocusNode? inputsearchFocusNode;
  TextEditingController? inputsearchTextController;
  String? Function(BuildContext, String?)? inputsearchTextControllerValidator;
  List<MenuRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputsearchFocusNode?.dispose();
    inputsearchTextController?.dispose();
  }
}
