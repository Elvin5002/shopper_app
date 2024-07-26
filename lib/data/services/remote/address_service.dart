import 'package:shopper_app/data/models/remote/address_response.dart';
import 'package:shopper_app/utils/constants/endpoints.dart';
import 'package:shopper_app/utils/extensions/int_extensions.dart';
import 'package:shopper_app/utils/network/dio/dio_client.dart';

class AddressService {
  Future<List<AddressResponse>> getAddress() async {
    const endpoint = Endpoints.getAddress;

    final response = await clientDio.get(endpoint);

    if (response.statusCode!.isSuccess) {
      final List data = response.data;
      return data.map((e) => AddressResponse.fromJson(e)).toList();
    }
    throw Exception();
  }

  Future<AddressResponse> saveAddress(String addressName, String name,
      String phoneNumber, String city, String state, String zipCode) async {
    const endpoint = Endpoints.createAddress;
    final requestBody = {
      "address_name": addressName,
      "name": name,
      "phone_number": phoneNumber,
      "city": city,
      "state": state,
      "zip_code": zipCode,
    };
    final response = await clientDio.post(endpoint, data: requestBody);

    if (response.statusCode!.isSuccess) {
      final data = response.data;
      return AddressResponse.fromJson(data);
    }
    throw Exception();
  }
}
