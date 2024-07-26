import '../services/remote/update_service.dart';
import '../contracts/update_contract.dart';
import '../models/remote/update_response.dart';

class UpdateRepository implements UpdateContract {
  UpdateRepository(this._updateService);

  final UpdateService _updateService;

  @override
  Future<UpdateResponse> update(String firstName, String lastName,
          String username, String bio, String birthDay, String gender) =>
      _updateService.update(firstName, lastName, username, bio, birthDay, gender);
}