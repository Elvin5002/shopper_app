import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopper_app/presentation/screens/payment/widgets/card_item.dart';
import 'package:shopper_app/utils/extensions/context_extensions.dart';

import '../../../../cubits/payment/payment_cubit.dart';
import '../../../../utils/constants/app_paddings.dart';
import 'add_new_card_btn.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PaymentCubit>();

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.20,
      child: Row(
        children: [
          const AddNewCardBtn(),
          BlocConsumer<PaymentCubit, PaymentState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              if (state is PaymentLoading) {
                return const Padding(
                  padding: AppPaddings.l42,
                  child: Center(child: CircularProgressIndicator()),
                );
              } else if (state is PaymentSuccess) {
                return SizedBox(
                  width: context.fullWidth * 0.61,
                  child: ListView.builder(
                      //reverse: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: cubit.cards.length,
                      itemBuilder: (_, i) =>
                          CardItem(paymentResponse: cubit.cards[i])),
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }
}
