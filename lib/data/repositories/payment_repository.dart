import 'package:shopper_app/data/contracts/payment_contract.dart';
import 'package:shopper_app/data/models/remote/payment_response.dart';
import 'package:shopper_app/data/services/remote/payment_service.dart';

class PaymentRepository implements PaymentContract {
  PaymentRepository(this._paymentService);

  final PaymentService _paymentService;

  @override
  Future<List<PaymentResponse>> getCardDetails() {
    return _paymentService.getCardDetails();
  }
  
  @override
  Future<PaymentResponse> addNewCard(String cardName, String cardNumber, String expiryDate, String cvv) {
    return _paymentService.addNewCard(cardName, cardNumber, expiryDate, cvv);
  }
}
