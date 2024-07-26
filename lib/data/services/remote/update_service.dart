import '../../../utils/extensions/int_extensions.dart';
import '../../../utils/network/dio/dio_client.dart';
import '../../models/remote/update_response.dart';
import '../../../utils/constants/endpoints.dart';

class UpdateService {
  
  Future<UpdateResponse> update(
    String firstName,
    String lastName,
    String username,
    String bio,
    String birthDay,
    String gender,
  ) async{
    const endpoint = Endpoints.update;
    final requestBody = {
      "first_name": firstName,
      "last_name": lastName,
      "username": username,
      "bio": bio,
      "birth_day": birthDay,
      "gender": gender 
    };

    final response = await clientDio.put(endpoint, data: requestBody);

    if(response.statusCode.isSuccess){
      return UpdateResponse.fromJson(response.data);
    }

    throw Exception();
  }
}