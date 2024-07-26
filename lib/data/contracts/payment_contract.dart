import 'package:shopper_app/data/models/remote/payment_response.dart';

abstract class PaymentContract {
  Future<List<PaymentResponse>> getCardDetails();
  Future<PaymentResponse> addNewCard(
    String cardName,
    String cardNumber,
    String expiryDate,
    String cvv,
  );
}