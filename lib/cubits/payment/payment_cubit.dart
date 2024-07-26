import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopper_app/data/models/remote/payment_response.dart';
import 'package:shopper_app/data/services/remote/payment_service.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit() : super(PaymentInitial());

  final PaymentService _paymentService = PaymentService();
  List<PaymentResponse> cards = [];

  late final controllers = {
    'cardName': TextEditingController(),
    'cardNumber': TextEditingController(),
    'expiryDate': TextEditingController(),
    'cvv': TextEditingController(),
  };

  void getPaymentDetails() async {
    try {
      emit(PaymentLoading());
      cards = await _paymentService.getCardDetails();
      log(cards.toString());
      emit(PaymentSuccess(cards));
    } catch (e) {
      PaymentFailure(e.toString());
    }
  }

  void addNewCard() async {
    try {
      emit(PaymentLoading());
      final response = await _paymentService.addNewCard(
        controllers['cardName']!.text,
        controllers['cardNumber']!.text,
        controllers['expiryDate']!.text,
        controllers['cvv']!.text,
      );
      cards.add(response);
      emit(PaymentSuccess(cards));
    } catch (e, s) {
      log('$e');
      log('$s');
      throw Exception(e);
    }
  }
}
