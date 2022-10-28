import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class WapiticarCinetpayCall {
  static Future<ApiCallResponse> call({
    String? transactionId = '',
    int? amount,
    String? userId = '',
    String? commandeId = '',
  }) {
    final body = '''
{
  "apikey": "110600039262dfb6ad474dc8.78287929",
  "site_id": "115639",
  "transaction_id": "${transactionId}",
  "amount": ${amount},
  "currency": "XOF",
  "description": " Commande_id : ${commandeId}",
  "notify_url": "https://webhook.site/d1dbbb89-52c7-49af-a689-b3c412df820d",
  "return_url": "wapiticar://wapiticar.com/paymentCheckstatus",
  "channels": "ALL",
  "metadata": "${userId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'WapiticarCinetpay',
      apiUrl: 'https://api-checkout.cinetpay.com/v2/payment',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class WapiticarTIDCIDGeneratorCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'wapiticar TID CID generator',
      apiUrl: 'https://wapiticar.herokuapp.com/tidgenerator?uid=${userId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class WapiticarCheckstatusCall {
  static Future<ApiCallResponse> call({
    String? transactionId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'wapiticar Checkstatus',
      apiUrl:
          'https://wapiticar.herokuapp.com/checkstatus?tid=${transactionId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class WapiticarUIDGeneratorCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'wapiticar UID generator',
      apiUrl: 'https://wapiticar.herokuapp.com/uidgenerator',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
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
