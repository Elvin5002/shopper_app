part of 'order_cubit.dart';

@immutable
sealed class OrderState {}

final class OrderInitial extends OrderState {}

final class OrderFailure extends OrderState {}

final class OrderSuccess extends OrderState {
  OrderSuccess(this.orders);
  final List<Result>? orders;
}

final class OrderNetworkError extends OrderState {}

final class OrderLoading extends OrderState {}
