import 'package:shopper_app/data/contracts/address_contract.dart';
import 'package:shopper_app/data/models/remote/address_response.dart';
import 'package:shopper_app/data/services/remote/address_service.dart';

class AddressRepository implements AddressContract {
  const AddressRepository(this._addressService);

  final AddressService _addressService;

  @override
  Future<List<AddressResponse>> getAddress() => _addressService.getAddress();
}
