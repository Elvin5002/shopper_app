import '../../../utils/constants/endpoints.dart';
import '../../../utils/extensions/int_extensions.dart';
import '../../../utils/network/dio/dio_client.dart';
import '../../models/remote/payment_response.dart';

class PaymentService {
  Future<List<PaymentResponse>> getCardDetails() async {
    const endpoint = Endpoints.paymentDetailsList;
    final response = await clientDio.get(endpoint);

    if (response.statusCode.isSuccess) {
      final List data = response.data;
      return data.map((e) => PaymentResponse.fromJson(e)).toList();
    }
    throw Exception();
  }

  Future<PaymentResponse> addNewCard(
      String cardName, String cardNumber, String expiryDate, String cvv) async {
    const endpoint = Endpoints.createPayment;
    final requestBody = {
      "name": cardName,
      "number": cardNumber,
      "date": expiryDate,
      "code": cvv,
    };
    final response = await clientDio.post(endpoint, data: requestBody);
    if (response.statusCode.isSuccess) {
      final data = response.data;
      return PaymentResponse.fromJson(data);
    }
    throw Exception();
  }
}
