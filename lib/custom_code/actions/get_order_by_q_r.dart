// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart'; // Firestore package

import 'dart:convert'; // Import this for JSON conversion

Future<String?> getOrderByQR(String orderId) async {
  try {
    // Reference to the Firestore collection where orders are stored
    final orderRef =
        FirebaseFirestore.instance.collection('orders').doc(orderId);

    // Fetch the order document
    final orderSnapshot = await orderRef.get();

    if (!orderSnapshot.exists) {
      print("Order not found for ID: $orderId");
      return null; // Return null if the order doesn't exist
    }

    // Convert document snapshot to a map
    final orderData = orderSnapshot.data() as Map<String, dynamic>;

    // Convert the orderData map into a JSON string
    final jsonString = jsonEncode(orderData);

    print("Order found: $jsonString");

    return jsonString; // Return the JSON string
  } catch (e) {
    print("Error fetching order: $e");
    return null;
  }
}
