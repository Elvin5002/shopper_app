import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../cubits/address/address_cubit.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../../utils/constants/app_text_styles.dart';
import '../../../utils/dialogs/dialogs.dart';
import '../../../utils/extensions/context_extensions.dart';
import '../../../utils/extensions/navigation_extension.dart';
import '../../../utils/helpers/pager.dart';
import '../../widgets/custom_elevated_button.dart';
import 'widgets/text_input.dart';

class SaveAddress extends StatelessWidget {
  const SaveAddress({super.key});

  @override
  Widget build(BuildContext context) {
    final addressCubit = context.read<AddressCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Address',
          style: AppTextStyles.appBarTextStyle,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              AppPaddings.h25 + EdgeInsets.only(bottom: context.keyboardHeight),
          child: const TextInputCard(),
        ),
      ),
      floatingActionButton: BlocListener<AddressCubit, AddressState>(
        listener: (context, state) {
          if (state is AddressLoading) {
            Dialogs.loading();
          } else if (state is AddressSuccess) {
            Dialogs.success();
            context.replace(Pager.addresses);
          }
        },
        child: CustomElevatedButton(
          onPressed: () => addressCubit.saveAddress(),
          child: Text("Save", style: AppTextStyles.accept),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
