import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'profileentry_widget.dart' show ProfileentryWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileentryModel extends FlutterFlowModel<ProfileentryWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldName widget.
  FocusNode? textFieldNameFocusNode;
  TextEditingController? textFieldNameTextController;
  String? Function(BuildContext, String?)? textFieldNameTextControllerValidator;
  // State field(s) for TextFieldClass widget.
  FocusNode? textFieldClassFocusNode;
  TextEditingController? textFieldClassTextController;
  String? Function(BuildContext, String?)?
      textFieldClassTextControllerValidator;
  // State field(s) for TextFieldNo widget.
  FocusNode? textFieldNoFocusNode;
  TextEditingController? textFieldNoTextController;
  String? Function(BuildContext, String?)? textFieldNoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldNameFocusNode?.dispose();
    textFieldNameTextController?.dispose();

    textFieldClassFocusNode?.dispose();
    textFieldClassTextController?.dispose();

    textFieldNoFocusNode?.dispose();
    textFieldNoTextController?.dispose();
  }
}
