import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'editprofile_widget.dart' show EditprofileWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditprofileModel extends FlutterFlowModel<EditprofileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldname widget.
  FocusNode? textFieldnameFocusNode;
  TextEditingController? textFieldnameTextController;
  String? Function(BuildContext, String?)? textFieldnameTextControllerValidator;
  // State field(s) for TextFieldno widget.
  FocusNode? textFieldnoFocusNode;
  TextEditingController? textFieldnoTextController;
  String? Function(BuildContext, String?)? textFieldnoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldnameFocusNode?.dispose();
    textFieldnameTextController?.dispose();

    textFieldnoFocusNode?.dispose();
    textFieldnoTextController?.dispose();
  }
}
