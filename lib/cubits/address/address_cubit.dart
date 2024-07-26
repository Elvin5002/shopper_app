import 'dart:developer';

import 'package:shopper_app/utils/helpers/index.dart';

import '../../data/models/remote/address_response.dart';

part 'address_state.dart';

class AddressCubit extends Cubit<AddressState> {
  AddressCubit(AddressService addressService) : super(AddressInitial());

  final AddressService _addressService = AddressService();
  List<AddressResponse>? addresses;

  late final controllers = {
    'addressName': TextEditingController(),
    'name': TextEditingController(),
    'phoneNumber': TextEditingController(),
    'city': TextEditingController(),
    'state': TextEditingController(),
    'zipCode': TextEditingController(),
  };

  void getAddress() async {
    try {
      emit(AddressLoading());
      addresses = await _addressService.getAddress();
      log(addresses.toString());
      emit(AddressSuccess(addresses));
    } catch (e, s) {
      log('$e');
      log('$s');
      emit(AddressFailure(e.toString()));
    }
  }

  void saveAddress() async {
    try {
      emit(AddressLoading());
      final response = await _addressService.saveAddress(
        controllers['addressName']!.text,
        controllers['name']!.text,
        controllers['phoneNumber']!.text,
        controllers['city']!.text,
        controllers['state']!.text,
        controllers['zipCode']!.text,
      );
      addresses?.add(response);
      emit(AddressSuccess(addresses));
    } catch (e, s) {
      log('$e');
      log('$s');
      throw Exception(e);
    }
  }
}
