import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopper_app/cubits/order/order_cubit.dart';
import 'package:shopper_app/presentation/screens/order/widgets/order_item.dart';
import 'package:shopper_app/utils/constants/app_paddings.dart';

import '../../widgets/custom_appbar.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<OrderCubit>();
    return Scaffold(
      appBar: const CustomAppBar(title: 'My Order'),
      body: Padding(
        padding: AppPaddings.h41 + AppPaddings.v16,
        child: BlocConsumer<OrderCubit, OrderState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            if (state is OrderLoading) {
              return const Padding(
                padding: AppPaddings.l42,
                child: Center(child: CircularProgressIndicator()),
              );
            } else if (state is OrderSuccess) {
              return ListView.builder(
                itemCount: cubit.orders.length,
                itemBuilder: (_, i) {
                  return OrderItem(order: cubit.orders[i]);
                },
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
