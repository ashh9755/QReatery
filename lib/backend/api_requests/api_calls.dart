import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CreatePaymentOrderCall {
  static Future<ApiCallResponse> call({
    String? orderId = '',
    double? orderAmount,
    String? orderCurrency = '',
    String? customerId = '',
    String? customerEmail = '',
    String? customerPhone = '',
  }) async {
    final ffApiRequestBody = '''
{
  "customer_details": {
    "customer_id": "${escapeStringForJson(customerId)}",
    "customer_email": "${escapeStringForJson(customerEmail)}",
    "customer_phone": "${escapeStringForJson(customerPhone)}"
  },
  "order_id": "${escapeStringForJson(orderId)}",
  "order_amount": ${orderAmount},
  "order_currency": "${escapeStringForJson(orderCurrency)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreatePaymentOrder',
      apiUrl: 'https://sandbox.cashfree.com/pg/orders',
      callType: ApiCallType.POST,
      headers: {
        'x-client-id': 'REMOVED',
        'x-client-secret':
            'REMOVED',
        'accept': 'application/json',
        'x-api-version': '2025-01-01',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? createdat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.created_at''',
      ));
  static String? customerdetailscustomerid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.customer_details.customer_id''',
      ));
  static String? customerdetailscustomeremail(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.customer_details.customer_email''',
      ));
  static String? customerdetailscustomerphone(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.customer_details.customer_phone''',
      ));
  static String? entity(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.entity''',
      ));
  static int? orderamount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.order_amount''',
      ));
  static String? ordercurrency(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.order_currency''',
      ));
  static String? orderexpirytime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.order_expiry_time''',
      ));
  static String? orderid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.order_id''',
      ));
  static List? ordersplits(dynamic response) => getJsonField(
        response,
        r'''$.order_splits''',
        true,
      ) as List?;
  static String? orderstatus(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.order_status''',
      ));
  static String? paymentsessionid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.payment_session_id''',
      ));
}

class CreatePaymentOrderCopyCall {
  static Future<ApiCallResponse> call({
    String? orderId = '',
    double? orderAmount,
    String? orderCurrency = '',
    String? customerId = '',
    String? customerEmail = '',
    String? customerPhone = '',
  }) async {
    final ffApiRequestBody = '''
{
  "customer_details": {
    "customer_id": "${escapeStringForJson(customerId)}",
    "customer_email": "${escapeStringForJson(customerEmail)}",
    "customer_phone": "${escapeStringForJson(customerPhone)}"
  },
  "order_id": "${escapeStringForJson(orderId)}",
  "order_amount": ${orderAmount},
  "order_currency": "${escapeStringForJson(orderCurrency)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreatePaymentOrder Copy',
      apiUrl: 'https://sandbox.cashfree.com/pg/orders',
      callType: ApiCallType.POST,
      headers: {
        'x-client-id': 'REMOVED',
        'x-client-secret':
            'REMOVED',
        'accept': 'application/json',
        'x-api-version': '2025-01-01',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? createdat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.created_at''',
      ));
  static String? customerdetailscustomerid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.customer_details.customer_id''',
      ));
  static String? customerdetailscustomeremail(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.customer_details.customer_email''',
      ));
  static String? customerdetailscustomerphone(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.customer_details.customer_phone''',
      ));
  static String? entity(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.entity''',
      ));
  static int? orderamount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.order_amount''',
      ));
  static String? ordercurrency(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.order_currency''',
      ));
  static String? orderexpirytime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.order_expiry_time''',
      ));
  static String? orderid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.order_id''',
      ));
  static List? ordersplits(dynamic response) => getJsonField(
        response,
        r'''$.order_splits''',
        true,
      ) as List?;
  static String? orderstatus(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.order_status''',
      ));
  static String? paymentsessionid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.payment_session_id''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
