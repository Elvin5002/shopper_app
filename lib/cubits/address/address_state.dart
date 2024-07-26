part of 'address_cubit.dart';

@immutable
sealed class AddressState {}

final class AddressInitial extends AddressState {}

final class AddressLoading extends AddressState {}

final class AddressSuccess extends AddressState {
  AddressSuccess(this.addressList);

  final List<AddressResponse>? addressList;
}

final class AddressFailure extends AddressState {
  AddressFailure(String string);
}
