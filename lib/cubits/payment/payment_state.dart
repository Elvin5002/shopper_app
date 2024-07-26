part of 'payment_cubit.dart';

@immutable
sealed class PaymentState {}

final class PaymentInitial extends PaymentState {}

final class PaymentLoading extends PaymentState {}

final class PaymentSuccess extends PaymentState {
  PaymentSuccess(this.products);
  final List<PaymentResponse>? products;
}

final class PaymentFailure extends PaymentState {
  PaymentFailure(this.error);

  final String error;
}
