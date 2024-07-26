import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import '../../data/contracts/update_contract.dart';

part 'update_profile_state.dart';

class UpdateProfileCubit extends Cubit<UpdateProfileState> {
  UpdateProfileCubit(this._updateContract) : super(UpdateProfileInitial());

  final BehaviorSubject<bool> isSelect = BehaviorSubject.seeded(false);

  final UpdateContract _updateContract;

  late final controllers = {
    'firstName': TextEditingController(),
    'lastName': TextEditingController(),
    'username': TextEditingController(),
    'bio': TextEditingController(),
    'birthDay': TextEditingController(),
  };

  updateGender(){
    if(isSelect.value) {return 'Male';}
    else {return 'Female';}
  }

  void update() async {
    try {
      emit(UpdateProfileLoading());
      _updateContract.update(
          controllers['firstName']!.text,
          controllers['lastName']!.text,
          controllers['username']!.text,
          controllers['bio']!.text,
          controllers['birthDay']!.text,
          updateGender());
      emit(UpdateProfileSuccess());
    } catch (e) {
      emit(UpdateProfileFailure());
    }
  }

  @override
  Future<void> close() {
    for (final controller in controllers.values) {
      controller.dispose();
    }
    isSelect.close();
    return super.close();
  }
}
