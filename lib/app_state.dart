import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<CartitemTypeStruct> _cart = [];
  List<CartitemTypeStruct> get cart => _cart;
  set cart(List<CartitemTypeStruct> value) {
    _cart = value;
  }

  void addToCart(CartitemTypeStruct value) {
    cart.add(value);
  }

  void removeFromCart(CartitemTypeStruct value) {
    cart.remove(value);
  }

  void removeAtIndexFromCart(int index) {
    cart.removeAt(index);
  }

  void updateCartAtIndex(
    int index,
    CartitemTypeStruct Function(CartitemTypeStruct) updateFn,
  ) {
    cart[index] = updateFn(_cart[index]);
  }

  void insertAtIndexInCart(int index, CartitemTypeStruct value) {
    cart.insert(index, value);
  }

  double _cartSum = 0.0;
  double get cartSum => _cartSum;
  set cartSum(double value) {
    _cartSum = value;
  }

  String _currentOrderId = '';
  String get currentOrderId => _currentOrderId;
  set currentOrderId(String value) {
    _currentOrderId = value;
  }

  String _orderID = '';
  String get orderID => _orderID;
  set orderID(String value) {
    _orderID = value;
  }

  String _orderIDbest = '';
  String get orderIDbest => _orderIDbest;
  set orderIDbest(String value) {
    _orderIDbest = value;
  }

  String _testing = '';
  String get testing => _testing;
  set testing(String value) {
    _testing = value;
  }
}
