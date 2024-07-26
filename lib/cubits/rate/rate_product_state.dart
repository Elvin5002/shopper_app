part of 'rate_product_cubit.dart';

@immutable
sealed class RateProductState {}

final class RateProductInitial extends RateProductState {}

class RateProductLoading extends RateProductState {}

class RateProductSuccess extends RateProductState {}

class RateProductFailure extends RateProductState {}

class RateProductNetworkError extends RateProductState {}
