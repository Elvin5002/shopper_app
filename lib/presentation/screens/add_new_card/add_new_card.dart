import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopper_app/utils/helpers/pager.dart';

import '../../../cubits/payment/payment_cubit.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../../utils/constants/app_radiuses.dart';
import '../../../utils/constants/app_text_styles.dart';
import '../../../utils/extensions/context_extensions.dart';
import '../../../utils/extensions/navigation_extension.dart';
import '../../widgets/custom_elevated_button.dart';
import 'widgets/text_field_view.dart';

class AddNewCard extends StatelessWidget {
  const AddNewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final paymentCubit = context.read<PaymentCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add New Card',
          style: AppTextStyles.appBarTextStyle,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: AppPaddings.h25,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TextFieldView(),
            SizedBox(
              width: context.fullWidth,
              height: 33,
              child: BlocListener<PaymentCubit, PaymentState>(
                listener: (context, state) {
                  if (state is PaymentLoading) {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (_) => Center(
                        child: Container(
                          padding: AppPaddings.a24,
                          decoration: const BoxDecoration(
                            color: AppColors.white,
                            borderRadius: AppRadiuses.a10,
                          ),
                          child: const SizedBox(
                            height: 48,
                            width: 48,
                            child: CircularProgressIndicator(),
                          ),
                        ),
                      ),
                    );
                  } else if (state is PaymentSuccess) {
                    context.replace(Pager.payment);
                  }
                },
                child: CustomElevatedButton(
                  onPressed: () => paymentCubit.addNewCard(),
                  child: Text("Save", style: AppTextStyles.accept),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
