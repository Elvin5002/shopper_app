import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

import '../../data/contracts/change_password_contract.dart';

part 'change_password_state.dart';

class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  ChangePasswordCubit(this._changePasswordContract)
      : super(ChangePasswordInitial()) {
    // SchedulerBinding.instance.addPostFrameCallback((d) {
    //   Dialogs.success();
    // });
  }

  final BehaviorSubject<bool> isSelect = BehaviorSubject.seeded(false);

  final ChangePasswordContract _changePasswordContract;

  final controllers = {
    'oldPassword': TextEditingController(),
    'password': TextEditingController(),
    'confirmPassword': TextEditingController(),
  };

  void update() async {
    try {
      emit(ChangePasswordLoading());
      await _changePasswordContract.update(
        controllers['oldPassword']!.text,
        controllers['password']!.text,
        controllers['confirmPassword']!.text,
      );
      emit(ChangePasswordSuccess());
    } catch (e) {
      emit(ChangePasswordFailure());
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
