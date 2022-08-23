import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class WapiticarCinetpayCall {
  static Future<ApiCallResponse> call({
    int? transactionId,
    int? amount,
    int? userId,
    int? commandeId,
    String? ooo = '',
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
  "return_url": "https://webhook.site/d1dbbb89-52c7-49af-a689-b3c412df820d",
  "channels": "ALL",
  "metadata": "${userId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'WapiticarCinetpay',
      apiUrl: 'https://api-checkout.cinetpay.com/v2/payment?${ooo}',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'transaction_id': transactionId,
        'amount': amount,
        'user_id': userId,
        'commande_id': commandeId,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}
