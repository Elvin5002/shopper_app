import 'package:shopper_app/data/models/remote/address_response.dart';

abstract class AddressContract {
  Future<List<AddressResponse>> getAddress();
}
